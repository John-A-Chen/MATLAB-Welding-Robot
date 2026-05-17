function start_welding_demo(mode)
% start_welding_demo Canonical non-breaking entrypoint for the welding demos.
% Usage:
%   start_welding_demo           % defaults to A2
%   start_welding_demo('A2')
%   start_welding_demo('A230')
%   start_welding_demo('A2J2')

if nargin < 1
    mode = 'A2';
end

bootstrap_paths();

switch upper(string(mode))
    case "A2"
        A2();
    case "A230"
        A230();
    case "A2J2"
        A2J2();
    otherwise
        error('Unknown mode "%s". Use A2, A230, or A2J2.', mode);
end
end
