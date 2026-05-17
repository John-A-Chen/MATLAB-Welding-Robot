function bootstrap_paths()
% bootstrap_paths Adds this repository (and subfolders) to the MATLAB path.
repoRoot = fileparts(mfilename('fullpath'));
addpath(genpath(repoRoot));
fprintf('Path bootstrap complete: %s\n', repoRoot);
end
