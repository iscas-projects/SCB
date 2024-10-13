(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var125 0)
(declare-sort var1979 0)
(declare-sort var1164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var125 var125)
(declare-const null-String String)
(declare-const null-var1164 var1164)
(declare-const var1164-NONE var1164)
(declare-const var293 var125) ; Statement: r13 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var293 null-var125)))
(declare-const var78 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var78 null-String)))
(declare-const var797 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var797 null-String)))
(declare-const var1428 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1428 null-String)))
(declare-const var747 var1164) ; Statement: r4 := @parameter3: org.hibernate.NullPrecedence 
(assert (not (= var747 null-var1164)))
(define-const var3202 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3202 var78)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var3202!1 String)
(assert (= var3202!1 var78))
 ; Statement: if r2 == null goto (branch) 
(assert (= var797 null-String)) ; Cond: r2 == null 
 ; Statement: if r3 == null goto $r5 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
(assert (= var1428 null-String)) ; Cond: r3 == null 
(define-const var117 var1164 var1164-NONE) ; Statement: $r5 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
 ; Statement: if r4 == $r5 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var747 var117)) ; Cond: r4 == $r5 
(assert true)
(define-const var778 String (toString/-2075883882 var3202!1)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var125=org.hibernate.dialect.Dialect, var293=r13, var78=r1, var1979=null_type, var797=r2, var1428=r3, var1164=org.hibernate.NullPrecedence, var747=r4, var3202=$r0, var117=$r5, var778=$r6}
; {org.hibernate.dialect.Dialect=var125, r13=var293, r1=var78, null_type=var1979, r2=var797, r3=var1428, org.hibernate.NullPrecedence=var1164, r4=var747, $r0=var3202, $r5=var117, $r6=var778}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.hibernate.dialect.Dialect;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: org.hibernate.NullPrecedence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	if r2 == null goto (branch);	if r3 == null goto $r5 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	$r5 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	if r4 == $r5 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4