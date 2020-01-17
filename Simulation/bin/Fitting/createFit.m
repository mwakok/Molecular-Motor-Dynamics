function [fitresult, gof] = createFit(XData, YData)
%CREATEFIT(XDATA,YDATA)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : XData
%      Y Output: YData
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 27-Jun-2017 15:04:40


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( XData, YData );

% Set up fittype and options.
ft = fittype( 'b*erf((x-x0)/a)+C', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0 0];
opts.StartPoint = [0 0.782138436897216 1 0.678735154857773];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% % Plot fit with data.
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% legend( h, 'YData vs. XData', 'untitled fit 1', 'Location', 'NorthEast' );
% % Label axes
% xlabel XData
% ylabel YData
% grid on


