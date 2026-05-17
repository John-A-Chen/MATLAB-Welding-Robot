function bootstrap_paths()
% bootstrap_paths Adds active project folders to the MATLAB path.
utilsDir = fileparts(mfilename('fullpath'));
repoRoot = fileparts(fileparts(utilsDir));

activeDirs = {
    repoRoot
    fullfile(repoRoot, 'src')
    fullfile(repoRoot, 'src', 'controllers')
    fullfile(repoRoot, 'src', 'models')
    fullfile(repoRoot, 'src', 'experiments')
    fullfile(repoRoot, 'src', 'utils')
    fullfile(repoRoot, 'assets')
    fullfile(repoRoot, 'assets', 'meshes')
    fullfile(repoRoot, 'assets', 'textures')
    fullfile(repoRoot, 'assets', 'photos')
    fullfile(repoRoot, 'docs')
    fullfile(repoRoot, 'scripts')
};

for i = 1:numel(activeDirs)
    if exist(activeDirs{i}, 'dir')
        addpath(activeDirs{i});
    end
end

fprintf('Path bootstrap complete: %s\n', repoRoot);
end
