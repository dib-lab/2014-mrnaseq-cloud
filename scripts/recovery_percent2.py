import screed
import blastparser
import sys

infile = sys.argv[1]
blast_file = sys.argv[2]

lengths={}
for n, record in enumerate(screed.open(infile)):
    lengths[record['name']]=len(record['sequence'])
print blast_file
recov=[]
cnt=0
for hits in blastparser.parse_file(blast_file):
    hit_len = abs(hits[0].matches[0].query_end - hits[0].matches[0].query_start)
    cov_precent = hit_len/float(lengths[hits.query_name])
    recov.append(hits[0].matches[0].identity*cov_precent)
    cnt=cnt+1

print sum(recov)/float(len(recov))
#print "Num hits", cnt
