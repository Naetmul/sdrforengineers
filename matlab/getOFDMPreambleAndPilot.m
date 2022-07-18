function value = getOFDMPreambleAndPilot(varargin)
    if ~exist("getOFDMPreambleAndPilot_imp.m", "file")
        disp("Trying to retrieve getOFDMPreambleAndPilot() implementation...");

        active_document = matlab.desktop.editor.getActive();

        current_folder = pwd();
        openExample('comm/OFDMSynchronizationExample','supportingFile','getOFDMPreambleAndPilot.m');
        example_folder = pwd();

        document = matlab.desktop.editor.findOpenDocument( ...
            fullfile(example_folder, 'getOFDMPreambleAndPilot.m'));
        document.saveAs(fullfile(current_folder, "getOFDMPreambleAndPilot_imp.m"));
        
        cd(current_folder);
        active_document.makeActive();
    end

    value = getOFDMPreambleAndPilot_imp(varargin{:});
end