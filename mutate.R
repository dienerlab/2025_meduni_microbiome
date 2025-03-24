#! /usr/bin/env Rscript

#' Mutate a set of amplicons and generate mock sequences

mutate = function(seq, rate=0.1, n=32) {
    nucleotides = c("A", "C", "G", "T")
    seq <- strsplit(seq, "")[[1]]
    seqs <- sapply(seq, function(x) {
        p <- rep(rate/3, 4)
        names(p) <- nucleotides
        p[x] <- 1 - rate/3
        bases <- sample(nucleotides, n, replace=TRUE, prob=p)
        return(bases)
    })
    return(apply(seqs, 1, paste, collapse=""))
}

args <- commandArgs(trailingOnly=TRUE)
N <- as.integer(args[1])
R <- as.double(args[2])
seqs <- args[-(1:2)]

sampled <- lapply(seqs, mutate, rate=R, n=N)
names(sampled) <- seqs

for (s in seqs) {
    table(sampled[s]) |> sort(decreasing=TRUE) |> print()
    cat("--------\n")
}