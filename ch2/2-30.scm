(use compat.sicp)

(define (square-tree-iter tree) 
  (cond ((null? tree) nil)
        ((not (pair? tree)) (expt tree 2))
        (else (cons (square-tree-iter (car tree)) (square-tree-iter (cdr tree))))))

(define (square-tree-map tree) 
  (map (lambda (sub-tree)
    (if (pair? sub-tree)
        (square-tree-map sub-tree)
        (expt sub-tree 2))) 
    tree))


#?=(square-tree-iter (list 1 (list 2 (list 3 4) 5) (list 6 7)))
#?=(square-tree-map (list 1 (list 2 (list 3 4) 5) (list 6 7)))
