MIT/GNU Scheme running under OS X

Copyright (C) 2014 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Friday September 30, 2016 at 11:06:55 AM
  Release 9.2 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/C 4.118
  Edwin 3.116

1 ]=> (load sqrt-iter.scm)

;Unbound variable: sqrt-iter.scm
;To continue, call RESTART with an option number:
; (RESTART 3) => Specify a value to use instead of sqrt-iter.scm.
; (RESTART 2) => Define sqrt-iter.scm to a given value.
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (load sqrt-iter.scm)

;Unbound variable: sqrt-iter.scm
;To continue, call RESTART with an option number:
; (RESTART 4) => Specify a value to use instead of sqrt-iter.scm.
; (RESTART 3) => Define sqrt-iter.scm to a given value.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

3 error> (load sqrt-iter.scm)

;Unbound variable: sqrt-iter.scm
;To continue, call RESTART with an option number:
; (RESTART 5) => Specify a value to use instead of sqrt-iter.scm.
; (RESTART 4) => Define sqrt-iter.scm to a given value.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

4 error> l

;Unbound variable: l
;To continue, call RESTART with an option number:
; (RESTART 6) => Specify a value to use instead of l.
; (RESTART 5) => Define l to a given value.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

5 error> sls

;Unbound variable: sls
;To continue, call RESTART with an option number:
; (RESTART 7) => Specify a value to use instead of sls.
; (RESTART 6) => Define sls to a given value.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

6 error> ls

;Unbound variable: ls
;To continue, call RESTART with an option number:
; (RESTART 8) => Specify a value to use instead of ls.
; (RESTART 7) => Define ls to a given value.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

7 error> 



l

;Unbound variable: l
;To continue, call RESTART with an option number:
; (RESTART 9) => Specify a value to use instead of l.
; (RESTART 8) => Define l to a given value.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

8 error> (+ 2 3)

;Value: 5

8 error> (load sqrt-iter.scm)

;Unbound variable: sqrt-iter.scm
;To continue, call RESTART with an option number:
; (RESTART 10) => Specify a value to use instead of sqrt-iter.scm.
; (RESTART 9) => Define sqrt-iter.scm to a given value.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

9 error> sqrt

;Value 2: #[compiled-procedure 2 ("arith" #xe0) #x3 #x373a4]

9 error> (cond (predicate1 consequent1)
      (predicate2 consequent2))

;Unbound variable: predicate1
;To continue, call RESTART with an option number:
; (RESTART 11) => Specify a value to use instead of predicate1.
; (RESTART 10) => Define predicate1 to a given value.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

10 error> 
cd

;Value 3: #[compiled-procedure 3 ("global" #x40) #x5 #x48081]

10 error> (cd /sqrt-iter.scm)

;Unbound variable: /sqrt-iter.scm
;To continue, call RESTART with an option number:
; (RESTART 12) => Specify a value to use instead of /sqrt-iter.scm.
; (RESTART 11) => Define /sqrt-iter.scm to a given value.
; (RESTART 10) => Return to read-eval-print level 10.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

11 error> (cd "Users/haven/Documents/opensource/ReadingNote/sicp")

;Unable to enter directory "Users/haven/Documents/opensource/ReadingNote/sicp" because: No such directory.
;To continue, call RESTART with an option number:
; (RESTART 11) => Return to read-eval-print level 11.
; (RESTART 10) => Return to read-eval-print level 10.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

12 error> (cd "~/Documents/opensource/ReadingNote/sicp")

;Value 4: #[pathname 4 "/Users/haven/Documents/opensource/ReadingNote/sicp/"]

12 error> (load sqrt-iter.scm)

;Unbound variable: sqrt-iter.scm
;To continue, call RESTART with an option number:
; (RESTART 14) => Specify a value to use instead of sqrt-iter.scm.
; (RESTART 13) => Define sqrt-iter.scm to a given value.
; (RESTART 12) => Return to read-eval-print level 12.
; (RESTART 11) => Return to read-eval-print level 11.
; (RESTART 10) => Return to read-eval-print level 10.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

13 error> (load "sqrt-iter.scm")

;Loading "sqrt-iter.scm"... done
;Value: sqrt

13 error> (sqrt 2)

;Aborting!: maximum recursion depth exceeded

13 error> (sqrt 2)

;Aborting!: maximum recursion depth exceeded

13 error> (load "sqrt-iter.scm")

;Loading "sqrt-iter.scm"... done
;Value: sqrt

13 error> (sqrt 2)

;Aborting!: maximum recursion depth exceeded

13 error> (sqrt 2.0)

;Aborting!: maximum recursion depth exceeded

13 error> (load "sqrt-iter.scm")

;Loading "sqrt-iter.scm"... done
;Value: sqrt

13 error> (sqrt 2)

;Aborting!: maximum recursion depth exceeded

13 error> 
foo

;Unbound variable: foo
;To continue, call RESTART with an option number:
; (RESTART 16) => Specify a value to use instead of foo.
; (RESTART 15) => Define foo to a given value.
; (RESTART 14) => Return to read-eval-print level 14.
; (RESTART 13) => Return to read-eval-print level 13.
; (RESTART 12) => Return to read-eval-print level 12.
; (RESTART 11) => Return to read-eval-print level 11.
; (RESTART 10) => Return to read-eval-print level 10.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

15 error> (prime? 7)

;Unbound variable: prime?
;To continue, call RESTART with an option number:
; (RESTART 17) => Specify a value to use instead of prime?.
; (RESTART 16) => Define prime? to a given value.
; (RESTART 15) => Return to read-eval-print level 15.
; (RESTART 14) => Return to read-eval-print level 14.
; (RESTART 13) => Return to read-eval-print level 13.
; (RESTART 12) => Return to read-eval-print level 12.
; (RESTART 11) => Return to read-eval-print level 11.
; (RESTART 10) => Return to read-eval-print level 10.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

16 error> (debug)

There are more than 50 subproblems on the stack.

Subproblem level: 0 (this is the lowest subproblem level)
Expression (from stack):
    prime?
Environment named: (user)

The execution history for this subproblem contains 1 reduction.
You are now in the debugger.  Type q to quit, ? for commands.

17 debug> (sqrt 2)
(
Unknown command character

17 debug> s
This is the initial environment; can't move to child.

17 debug> q
;Unspecified return value

16 error> 
;Unbound variable: rt
;To continue, call RESTART with an option number:
; (RESTART 18) => Specify a value to use instead of rt.
; (RESTART 17) => Define rt to a given value.
; (RESTART 16) => Return to read-eval-print level 16.
; (RESTART 15) => Return to read-eval-print level 15.
; (RESTART 14) => Return to read-eval-print level 14.
; (RESTART 13) => Return to read-eval-print level 13.
; (RESTART 12) => Return to read-eval-print level 12.
; (RESTART 11) => Return to read-eval-print level 11.
; (RESTART 10) => Return to read-eval-print level 10.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

17 error> 
;Value: 2

17 error> (sqrt 2)

;Aborting!: maximum recursion depth exceeded

17 error> (debug)

There are more than 50 subproblems on the stack.

Subproblem level: 0 (this is the lowest subproblem level)
Expression (from stack):
    rt
Environment named: (user)

The execution history for this subproblem contains 1 reduction.
You are now in the debugger.  Type q to quit, ? for commands.

18 debug> ?
?
   ?   help, list command letters
   A   show All bindings in current environment and its ancestors
   B   move (Back) to next reduction (earlier in time)
   C   show bindings of identifiers in the Current environment
   D   move (Down) to the previous subproblem (later in time)
   E   Enter a read-eval-print loop in the current environment
   F   move (Forward) to previous reduction (later in time)
   G   Go to a particular subproblem
   H   prints a summary (History) of all subproblems
   I   redisplay the error message Info
   J   return TO the current subproblem with a value
   K   continue the program using a standard restart option
   L   (List expression) pretty print the current expression
   M   (Frame elements) show the contents of the stack frame, in raw form
   O   pretty print the procedure that created the current environment
   P   move to environment that is Parent of current environment
   Q   Quit (exit debugger)
   R   print the execution history (Reductions) of the current subproblem level
   S   move to child of current environment (in current chain)
   T   print the current subproblem or reduction
   U   move (Up) to the next subproblem (earlier in time)
   V   eValuate expression in current environment
   W   enter environment inspector (Where) on the current environment
   X   create a read eval print loop in the debugger environment
   Y   display the current stack frame
   Z   return FROM the current subproblem with a value

18 debug> 



dsf
d
Now ignoring information from the execution history.
Already at lowest subproblem level.

18 debug> s
This is the initial environment; can't move to child.

18 debug> f
Now using information from the execution history.
No more reductions; already at lowest subproblem level.

18 debug> B
B
No more reductions; going to the next (less recent) subproblem.
Subproblem level: 1
Compiled code expression (from stack):
    (let ((value |###|))
      (repl-history/record! (%record-ref (cmdl/state repl) 5) value)
      value)
 subproblem being executed (marked by |###|):
    (hook/repl-eval s-expression environment repl)
Environment created by the procedure: %REPL-EVAL

 applied to: (rt #[environment 5] #[cmdl 6])
There is no execution history for this subproblem.

18 debug> B
B
Subproblem level: 2
Compiled code expression (from stack):
    (hook/repl-write |###| s-expression environment repl)
 subproblem being executed (marked by |###|):
    (%repl-eval s-expression environment repl)
Environment created by the procedure: %REPL-EVAL/WRITE

 applied to: (rt #[environment 5] #[cmdl 6])
There is no execution history for this subproblem.

18 debug> B
B
Subproblem level: 3
Compiled code expression (from stack):
    (begin |###| (do-loop))
 subproblem being executed (marked by |###|):
    (if (queue-empty? queue)
        (let ((environment (%record-ref ... 2)))
          (%repl-eval/write (hook/repl-read environment repl)
                            environment
                            repl))
        ((dequeue! queue) repl))
Environment created by the procedure: DO-LOOP

 applied to: ()
There is no execution history for this subproblem.

18 debug> B
B
Subproblem level: 4
Compiled code expression (from stack):
    (loop |###|)
 subproblem being executed (marked by |###|):
    (bind-abort-restart
     cmdl
     (lambda ()
       (deregister-all-events)
       (with-interrupt-mask
        interrupt-mask/all
        (lambda (interrupt-mask)
          (unblock-thread-events)
          (ignore-errors ...)
          (call-with-current-continuation ...)))))
Environment created by the procedure: LOOP

 applied to: (#[compiled-closure 7 ("rep" #x1a) #x17 #x32424 #x25156a])
There is no execution history for this subproblem.

18 debug> B
B
Subproblem level: 5
Compiled code expression (from stack):
    (begin |###| (default-error-handler continuation error-code))
 subproblem being executed (marked by |###|):
    (handler continuation)
Environment created by a LAMBDA special form

 applied to: (#[continuation 8])
There is no execution history for this subproblem.

18 debug> B
B
Subproblem level: 6  Reduction number: 0
Expression (from execution history):
    prime?
Environment named: (user)

18 debug> B
B
No more reductions; going to the next (less recent) subproblem.
Subproblem level: 7  Reduction number: 0
Expression (from execution history):
    (prime? 7)
Environment named: (user)

18 debug> B
B
No more reductions; going to the next (less recent) subproblem.
Subproblem level: 8
Compiled code expression (from stack):
    (let ((value |###|))
      (repl-history/record! (%record-ref (cmdl/state repl) 5) value)
      value)
 subproblem being executed (marked by |###|):
    (hook/repl-eval s-expression environment repl)
Environment created by the procedure: %REPL-EVAL

 applied to: ((prime? 7) #[environment 5] #[cmdl 9])
There is no execution history for this subproblem.

18 debug> B
B
Subproblem level: 9
Compiled code expression (from stack):
    (hook/repl-write |###| s-expression environment repl)
 subproblem being executed (marked by |###|):
    (%repl-eval s-expression environment repl)
Environment created by the procedure: %REPL-EVAL/WRITE

 applied to: ((prime? 7) #[environment 5] #[cmdl 9])
There is no execution history for this subproblem.

18 debug> B
B
Subproblem level: 10
Compiled code expression (from stack):
    (begin |###| (do-loop))
 subproblem being executed (marked by |###|):
    (if (queue-empty? queue)
        (let ((environment (%record-ref ... 2)))
          (%repl-eval/write (hook/repl-read environment repl)
                            environment
                            repl))
        ((dequeue! queue) repl))
Environment created by the procedure: DO-LOOP

 applied to: ()
There is no execution history for this subproblem.

18 debug> B
B
Subproblem level: 11
Compiled code expression (from stack):
    (loop |###|)
 subproblem being executed (marked by |###|):
    (bind-abort-restart
     cmdl
     (lambda ()
       (deregister-all-events)
       (with-interrupt-mask
        interrupt-mask/all
        (lambda (interrupt-mask)
          (unblock-thread-events)
          (ignore-errors ...)
          (call-with-current-continuation ...)))))
Environment created by the procedure: LOOP

 applied to: (#[compiled-closure 10 ("rep" #x1a) #x17 #x32424 #x24cf73])
There is no execution history for this subproblem.

18 debug> (load 'sqrt-iter.scm')
(
Unknown command character

18 debug> l
(loop
 (bind-abort-restart
  cmdl
  (lambda ()
    (deregister-all-events)
    (with-interrupt-mask
     interrupt-mask/all
     (lambda (interrupt-mask)
       (unblock-thread-events)
       (ignore-errors (lambda () ((->cmdl-message message) cmdl)))
       (call-with-current-continuation
        (lambda (continuation)
          (with-create-thread-continuation
           continuation
           (lambda ()
             ((cmdl/driver cmdl) cmdl))))))))))

18 debug> o
(named-lambda (loop message)
  (loop
   (bind-abort-restart
    cmdl
    (lambda ()
      (deregister-all-events)
      (with-interrupt-mask
       interrupt-mask/all
       (lambda (interrupt-mask)
         (unblock-thread-events)
         (ignore-errors (lambda () ((->cmdl-message message) cmdl)))
         (call-with-current-continuation
          (lambda (continuation)
            (with-create-thread-continuation
             continuation
             (lambda ()
               ((cmdl/driver cmdl) cmdl)))))))))))

18 debug> a
----------------------------------------
Environment created by the procedure: LOOP
Depth (relative to initial environment): 0
 has bindings:

message = #[compiled-closure 10 ("rep" #x1a) #x17 #x32424 #x24cf73]


----------------------------------------
Environment created by a LET special form
Depth (relative to initial environment): 1
 has no bindings


----------------------------------------
Environment created by a LAMBDA special form
Depth (relative to initial environment): 2
 has no bindings


----------------------------------------
Environment created by a LET special form
Depth (relative to initial environment): 3
 has no bindings


----------------------------------------
Environment created by a LAMBDA special form
Depth (relative to initial environment): 4
 has no bindings


----------------------------------------
Environment created by a LET special form
Depth (relative to initial environment): 5
 has no bindings


----------------------------------------
Environment created by the procedure: CMDL/START
Depth (relative to initial environment): 6
 has bindings:

cmdl = #[cmdl 9]


----------------------------------------
Environment named: (runtime rep)
Depth (relative to initial environment): 7


----------------------------------------
Environment named: (runtime)
Depth (relative to initial environment): 8


----------------------------------------
Environment named: ()
Depth (relative to initial environment): 9

18 debug> d
Subproblem level: 10
Compiled code expression (from stack):
    (begin |###| (do-loop))
 subproblem being executed (marked by |###|):
    (if (queue-empty? queue)
        (let ((environment (%record-ref ... 2)))
          (%repl-eval/write (hook/repl-read environment repl)
                            environment
                            repl))
        ((dequeue! queue) repl))
Environment created by the procedure: DO-LOOP

 applied to: ()
There is no execution history for this subproblem.

18 debug>  
Unknown command character

18 debug> '
Unknown command character

18 debug> s
This is the initial environment; can't move to child.

18 debug> q
;Unspecified return value

17 error> 
;Unbound variable: rt-iter.scm
;To continue, call RESTART with an option number:
; (RESTART 19) => Specify a value to use instead of rt-iter.scm.
; (RESTART 18) => Define rt-iter.scm to a given value.
; (RESTART 17) => Return to read-eval-print level 17.
; (RESTART 16) => Return to read-eval-print level 16.
; (RESTART 15) => Return to read-eval-print level 15.
; (RESTART 14) => Return to read-eval-print level 14.
; (RESTART 13) => Return to read-eval-print level 13.
; (RESTART 12) => Return to read-eval-print level 12.
; (RESTART 11) => Return to read-eval-print level 11.
; (RESTART 10) => Return to read-eval-print level 10.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

18 error> 
;Unbalanced close parenthesis: #\)
;To continue, call RESTART with an option number:
; (RESTART 18) => Return to read-eval-print level 18.
; (RESTART 17) => Return to read-eval-print level 17.
; (RESTART 16) => Return to read-eval-print level 16.
; (RESTART 15) => Return to read-eval-print level 15.
; (RESTART 14) => Return to read-eval-print level 14.
; (RESTART 13) => Return to read-eval-print level 13.
; (RESTART 12) => Return to read-eval-print level 12.
; (RESTART 11) => Return to read-eval-print level 11.
; (RESTART 10) => Return to read-eval-print level 10.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

19 error> (load 'sqrt-iter.scm')

;Unbalanced close parenthesis: #\)
;To continue, call RESTART with an option number:
; (RESTART 19) => Return to read-eval-print level 19.
; (RESTART 18) => Return to read-eval-print level 18.
; (RESTART 17) => Return to read-eval-print level 17.
; (RESTART 16) => Return to read-eval-print level 16.
; (RESTART 15) => Return to read-eval-print level 15.
; (RESTART 14) => Return to read-eval-print level 14.
; (RESTART 13) => Return to read-eval-print level 13.
; (RESTART 12) => Return to read-eval-print level 12.
; (RESTART 11) => Return to read-eval-print level 11.
; (RESTART 10) => Return to read-eval-print level 10.
; (RESTART 9) => Return to read-eval-print level 9.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

20 error> (load "sqrt-iter.scm")

;Loading "sqrt-iter.scm"... done
;Value: sqrt

20 error> (sqrt 2)

;Aborting!: maximum recursion depth exceeded

20 error> (load "sqrt-iter.scm")

;Loading "sqrt-iter.scm"... done
;Value: sqrt

20 error> (sqrt 2)

;Value: 1.4142156862745097

20 error> 