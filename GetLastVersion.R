#' Get the last version of an RPGM project
#' @return the version
GetLastVersion = function(){
    # Load rjson
    library("rjson");

    # Get the ppro files
    ppro = list.files(rpgm.pgmFilePath("/"), pattern = ".ppro$", recursive = TRUE);
    if(length(ppro) == 0){
        stop("Could not find ppro file.");
    }

    # read JSON and value
    return(fromJSON(file = "project.ppro")$history[[1L]]$version);
}