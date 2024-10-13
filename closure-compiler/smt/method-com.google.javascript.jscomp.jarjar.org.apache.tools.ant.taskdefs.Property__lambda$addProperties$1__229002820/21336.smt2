(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1900 0)
(declare-sort var269 0)
(declare-sort var259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/-696888527 (var1900) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addProperty/533835876 (var1900 String var259) void)
(declare-const null-var1900 var1900)
(declare-const null-String String)
(declare-const null-var259 var259)
(declare-const var2218 var1900) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property 
(assert (not (= var2218 null-var1900)))
(declare-const var1678 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1678 null-String)))
(declare-const var1229 var259) ; Statement: r7 := @parameter1: java.lang.Object 
(assert (not (= var1229 null-var259)))
(define-const var3166 String (prefix/-696888527 var2218)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: java.lang.String prefix> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3166 null-String))) ; Cond: $r1 != null 
(define-const var3799 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3799)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3799!1 String)
(assert (= var3799!1 ""))
(define-const var74 String (prefix/-696888527 var2218)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: java.lang.String prefix> 
(assert true)
(define-const var1875 String (append/672562846 var3799!1 var74)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3799!2 String)
(assert (= var3799!2 (str.++ var3799!1 var74)))
(assert true)
(define-const var2124 String (append/672562846 var1875 var1678)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1875!1 String)
(assert (= var1875!1 (str.++ var1875 var1678)))
(assert true)
(define-const var2834 String (toString/-2075883882 var2124)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (addProperty/533835876 var2218 var2834 var1229)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void addProperty(java.lang.String,java.lang.Object)>($r8, r7) 

(declare-const var2218!1 var1900)
(declare-const var2834!1 String)
(declare-const var1229!1 var259)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/-696888527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addProperty/533835876=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, java.lang.String, java.lang.Object], void)}
; {var1900=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, var2218=r0, var1678=r4, var269=null_type, var259=java.lang.Object, var1229=r7, var3166=$r1, var3799=$r2, var74=$r3, var1875=$r5, var2124=$r6, var2834=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property=var1900, r0=var2218, r4=var1678, null_type=var269, java.lang.Object=var259, r7=var1229, $r1=var3166, $r2=var3799, $r3=var74, $r5=var1875, $r6=var2124, $r8=var2834}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property;	r4 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.Object;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: java.lang.String prefix>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: java.lang.String prefix>;	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void addProperty(java.lang.String,java.lang.Object)>($r8, r7);	return
;block_num 3