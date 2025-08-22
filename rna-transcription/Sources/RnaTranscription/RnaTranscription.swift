func toRna(_ dna: String) -> String {
    // Write your code for the 'Rna Transcription' exercise in this file.
    var rna = ""
    for text in dna {
        switch text {
        case "G":
        rna += "C"
        case "C":
        rna += "G"
        case "T":
        rna += "A"
        case "A":
        rna += "U"
        default:
        rna += ""
        }
    }
    return rna
}
