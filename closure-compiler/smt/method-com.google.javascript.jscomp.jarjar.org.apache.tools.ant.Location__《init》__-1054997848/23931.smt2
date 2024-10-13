(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3170 0)
(declare-sort var3630 0)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2948) void)
(declare-fun cast-from-var3170-to-var2948 (var3170) var2948)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun fileName/-323537676 (var3170) String)
(declare-fun lineNumber/-323537676 (var3170) Int)
(declare-fun columnNumber/-323537676 (var3170) Int)
(declare-const null-var3170 var3170)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2443 var3170) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location 
(assert (not (= var2443 null-var3170)))
(declare-const var2775 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2775 null-String)))
(declare-const var329 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var329 null-Int)))
(declare-const var1256 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1256 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3170-to-var2948 var2443))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2443!1 var3170)
 ; Statement: if r1 == null goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1 
(assert (not (= var2775 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var107 Bool (startsWith/-1785782452 var2775 "file:")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("file:") 
 ; Statement: if $z0 == 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1 
(assert (= (ite var107 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var2443!2 var3170)
(assert (not (= var2443!2 null-var3170)))
(assert (= (fileName/-323537676 var2443!2) var2775)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1 
(assert true) ; Non Conditional
(declare-const var2443!3 var3170)
(assert (not (= var2443!3 null-var3170)))
(assert (= (lineNumber/-323537676 var2443!3) var329)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int lineNumber> = i0 
(declare-const var2443!4 var3170)
(assert (not (= var2443!4 null-var3170)))
(assert (= (columnNumber/-323537676 var2443!4) var1256)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int columnNumber> = i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3170-to-var2948=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), fileName/-323537676=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], java.lang.String), lineNumber/-323537676=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], int), columnNumber/-323537676=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], int)}
; {var3170=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2443=r0, var2775=r1, var3630=null_type, var329=i0, var1256=i1, var2948=java.lang.Object, var107=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3170, r0=var2443, r1=var2775, null_type=var3630, i0=var329, i1=var1256, java.lang.Object=var2948, $z0=var107}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	if r1 == null goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1;	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("file:");	if $z0 == 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int lineNumber> = i0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int columnNumber> = i1;	return
;block_num 4