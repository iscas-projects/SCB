(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3697 0)
(declare-sort var419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var419-init () var419)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var419 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var1208 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1208 null-ClassObject)))
(declare-const var3413 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3413 null-String)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (not (= var1208 null-ClassObject)))) ; Negate: Cond: r0 != null  
(define-const var1323 var419 var419-init) ; Statement: $r21 = new java.lang.IllegalArgumentException 
(define-const var2681 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2681)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2681!1 String)
(assert (= var2681!1 ""))
(assert true)
(define-const var1858 String (append/672562846 var2681!1 "Class on which to find field [")) ; Statement: $r16 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class on which to find field [") 
(declare-const var2681!2 String)
(assert (= var2681!2 (str.++ var2681!1 "Class on which to find field [")))
(assert true)
(define-const var1760 String (append/672562846 var1858 var3413)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1858!1 String)
(assert (= var1858!1 (str.++ var1858 var3413)))
(assert true)
(define-const var1034 String (append/672562846 var1760 "] cannot be null")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be null") 
(declare-const var1760!1 String)
(assert (= var1760!1 (str.++ var1760 "] cannot be null")))
(assert true)
(define-const var1255 String (toString/-2075883882 var1034)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1323 var1255)) ; Statement: specialinvoke $r21.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var1323!1 var419)
(declare-const var1255!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var419-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1208=r0, var3413=r1, var3697=null_type, var419=java.lang.IllegalArgumentException, var1323=$r21, var2681=$r20, var1858=$r16, var1760=$r17, var1034=$r18, var1255=$r19}
; {r0=var1208, r1=var3413, null_type=var3697, java.lang.IllegalArgumentException=var419, $r21=var1323, $r20=var2681, $r16=var1858, $r17=var1760, $r18=var1034, $r19=var1255}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	if r0 != null goto (branch);	$r21 = new java.lang.IllegalArgumentException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class on which to find field [");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be null");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r21
;block_num 2