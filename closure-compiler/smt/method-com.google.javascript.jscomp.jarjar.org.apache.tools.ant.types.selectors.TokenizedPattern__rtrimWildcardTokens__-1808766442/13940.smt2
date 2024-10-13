(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2832 0)
(declare-sort var265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun tokenizedPattern/1998934357 (var2832) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var2832 var2832)
(declare-const var265-EMPTY_PATH var265)
(declare-const var1042 var2832) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern 
(assert (not (= var1042 null-var2832)))
(define-const var3187 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3187)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3187!1 String)
(assert (= var3187!1 ""))
(define-const var1590 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var3729 (Array Int String) (tokenizedPattern/1998934357 var1042)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern: java.lang.String[] tokenizedPattern> 
(define-const var3271 Int (getLength-Arr-String-1 var3729)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i5 >= $i0 goto (branch) 
(assert (>= var1590 var3271)) ; Cond: i5 >= $i0 
 ; Statement: if i5 != 0 goto r3 = newarray (java.lang.String)[i5] 
(assert (not (not (= var1590 0)))) ; Negate: Cond: i5 != 0  
(define-const var2080 var265 var265-EMPTY_PATH) ; Statement: $r7 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath EMPTY_PATH> 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), tokenizedPattern/1998934357=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var2832=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern, var1042=r1, var3187=$r13, var1590=i5, var3729=$r2, var3271=$i0, var265=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath, var2080=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern=var2832, r1=var1042, $r13=var3187, i5=var1590, $r2=var3729, $i0=var3271, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath=var265, $r7=var2080}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	i5 = 0;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern: java.lang.String[] tokenizedPattern>;	$i0 = lengthof $r2;	if i5 >= $i0 goto (branch);	if i5 != 0 goto r3 = newarray (java.lang.String)[i5];	$r7 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPath EMPTY_PATH>;	return $r7
;block_num 4