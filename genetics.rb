pattern = "AATCGCCCAAGACAACATGGGGTTGCAGGTGTAAATCGATAAAAGAAGGGGTAGGTATCGTTCACGGGGCACACTACTAGCGGGGCTTAGATAGCAAACTAGGGGTTCTTCACGCAGCGCAAGACACATGCGCTATAAATGCTAGATCAACTGACATTATACTTATCAATGGGGAATAGGTCAGATAGATGGCACCACCATCGCACACTTATAGGCACGTCACCTGAGCCGACTCGAAATCCGCTTAGTACTGCGACAAAATCATCCGCTCGGTTGATCTAGGATCGGGACTATATCGCAGCGCCCTAGCTCATTCTCACACGTGGAGGGAGCGACGAATGCTCAGCGAGGAGTTGTTCTGACCCGTGACGGAGTACTCTTTACTATCAAGTATAGGCCAGTCTTGCCCCGATCGCTATACATTATTTGATGCCCCCATAGCCGCAGTCATTCGACAGATTAGGCCCACCACCACCTCCCCTTGAGATTGGCTGCATCTACTGTTCAGTCTAATCGCAACTAGCAACATTACGGAAGAAGGGCTACTCTAGATTGTCGCGTACAAGGTTTACCAAAGTGCATAAATCGACGGCCCCTCACGTGCGGCCGTTGGCAAGAGCAACTAAACGCCGGAAGACCCACGCCAATACAGTTCCGCGCCACGGAGGTAACTTACATGCGCGCTCCCCGGTTTACGGGTCATGCCTACCCCTCGGCATTCATGGGACTCAAACCTATCCCCGCAGCCGGAGCTTAAGAAAGAGCTAACACTTAGTTCGCATTCAAAATCGGTAAATTAATTAACATGCCGCAACGCGTCTAGACTACTCCCCGCTTTGCGTTCACCAACGTCCCGAGTTTTAACCTAGAAGCATATGTGCTGACCGTTAGCATACGGTGTTCATCACTCTCGCGATCTCGTCAACTTGGCCATCGCCATCTGGTGGACCCCGGAATCAAAGCTGCTGACTAGAGGCGTTG"
length = pattern.length
puts length
puts "The number of Adenine is " + pattern.count("A").to_s
puts "The number of Guanine is " + pattern.count("G").to_s
puts "The number of Cytosine is " + pattern.count("C").to_s
puts "The number of Thiamine is " + pattern.count("T").to_s

puts "Occurrences of GAT: "+ pattern.scan(/(?=#{"GAT"})/).count().to_s

RNA_pattern = pattern.gsub("T", "U")
#puts RNA_pattern

complement_pattern = pattern.gsub(/[ATCG]/, 'A' => 'T', 'T' => 'A', 'C' => 'G', 'G'=>'C')
#puts complement_pattern

reverse_complement = complement_pattern.reverse
#puts reverse_complement

#pattern = "AATCGCCCAAGACAACATGGGGTTGCAGGTGTAAATCGATAAAAGAAGGGGTAGGTATCGTTCACGGGGCACACTACTAGCGGGGCTTAGATAGCAAACTAGGGGTTCTTCACGCAGCGCAAGACACATGCGCTATAAATGCTAGATCAACTGACATTATACTTATCAATGGGGAATAGGTCAGATAGATGGCACCACCATCGCACACTTATAGGCACGTCACCTGAGCCGACTCGAAATCCGCTTAGTACTGCGACAAAATCATCCGCTCGGTTGATCTAGGATCGGGACTATATCGCAGCGCCCTAGCTCATTCTCACACGTGGAGGGAGCGACGAATGCTCAGCGAGGAGTTGTTCTGACCCGTGACGGAGTACTCTTTACTATCAAGTATAGGCCAGTCTTGCCCCGATCGCTATACATTATTTGATGCCCCCATAGCCGCAGTCATTCGACAGATTAGGCCCACCACCACCTCCCCTTGAGATTGGCTGCATCTACTGTTCAGTCTAATCGCAACTAGCAACATTACGGAAGAAGGGCTACTCTAGATTGTCGCGTACAAGGTTTACCAAAGTGCATAAATCGACGGCCCCTCACGTGCGGCCGTTGGCAAGAGCAACTAAACGCCGGAAGACCCACGCCAATACAGTTCCGCGCCACGGAGGTAACTTACATGCGCGCTCCCCGGTTTACGGGTCATGCCTACCCCTCGGCATTCATGGGACTCAAACCTATCCCCGCAGCCGGAGCTTAAGAAAGAGCTAACACTTAGTTCGCATTCAAAATCGGTAAATTAATTAACATGCCGCAACGCGTCTAGACTACTCCCCGCTTTGCGTTCACCAACGTCCCGAGTTTTAACCTAGAAGCATATGTGCTGACCGTTAGCATACGGTGTTCATCACTCTCGCGATCTCGTCAACTTGGCCATCGCCATCTGGTGGACCCCGGAATCAAAGCTGCTGACTAGAGGCGTTG"
pattern = "dddddd"
pattern2 = "aaaddd"
##############
pattern_array = pattern.split("")
#pattern2 = "AATCGCCCAAGACATCATGGGGTTGCAGGTGTAAATCGATAAAAGAAGGGGTAGGTATCGTTCACGGGGCACACTACTAGCGGGGCTTAGATAGCAAACTAGGGGTTCTTCACGCAGCGCAAGACACATGCGCTATAAATGCTAGATCAACTGACATTATACTTATCAATCGGGTATAGGTCAGATAGATGGCACCACCATCGCACACTTATAGGCACGTCACCTGAGCCGACTCGAAATCCGCTTAGTACTGCGACAAAATCATCCGCTCGGTTGATCTAGGATCGGGACTATATCGCAGCGCCCTAGCTCATTCTCACACGTGGAGGGAGCGACGAATGCTCAGCGAGGAGTTGTTCTGACCCGTGACGGAGTACTCTTTACTATCAAGTATAGGCCAGTCTTGCCCCGATCGCTATACATTATTTGATGCCCCCATAGCCGCAGTCATTCGACAGATTAGGCCCACCACCACCTCCCCTTGAGATTGGCTGCATCTACTGTTCAGTCTATTCGCAACTAGCAACATTACGGAAGAAGGGCTACTCAAGATTGTCGCGTACAAGGTTTACCAAAGTGCATAAATCGACGGCCCCTCACGTGCGGCCGTTGGCAAGAGCAACTAAACGCCGGAAGACCCACGCCAATACAGTTCCGCGCCACGGAGGTAACTTACATGCGCGCTCCCCGGTTTACGGGTCATGCATACCCCTCGGCATTCATGGGACTCAAACCTATCCCCGCAGCCGGAGCTTAAGAAAGAGCTAACACTTAGTTCGCATTCAAAATCGGTAAATTGATTAACATGCCGCAACGCGTCTAGACTACTCCCCGCTTTGCGTTCACCAACGTCCCGAGTTTTAACCTAGATGCATATGTGCTGACCGTTAGCATAGGGTGTTCATCACTCTCGCGATCTCGTCAACTTGGCCATCGCCATCTGGTGGACCCCGGAATCAAAGCTGCTGACTAGAGGCGTTG"
#needed to split other DNA sequence 
other_pattern_array = pattern2.split("")
size1 = pattern.length 
#size2 = pattern2.length 
# pattern_array.each do |num|
#     puts num
# end
count = 0
#do not need "for word"
#do not need nested for loop 
unless pattern_array==other_pattern_array
    #pattern_array.each do |i|
    #pattern.zip(pattern2).each do |a1, a2|
    for x in (0..size1)
        if pattern_array[x]!=other_pattern_array[x]
            count = count + 1
        end
    end
    puts count
  
    else
        puts "arrays are the same"
end 

        

