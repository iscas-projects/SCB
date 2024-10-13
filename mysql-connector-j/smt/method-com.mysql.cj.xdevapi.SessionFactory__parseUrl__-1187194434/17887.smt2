(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort var1695 0)
(declare-sort var2953 0)
(declare-sort var3392 0)
(declare-sort var4 0)
(declare-sort var2767 0)
(declare-sort var2856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2856!class ClassObject)
(declare-fun var2953_getConnectionUrlInstance/2074474753 (String var3392) var2953)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2767_createException/361149092 (ClassObject String) var4)
(declare-fun cast-from-var4-to-var2856 (var4) var2856)
(declare-const null-var3520 var3520)
(declare-const null-String String)
(declare-const null-var3392 var3392)
(declare-const null-var2953 var2953)
(declare-const var2047 var3520) ; Statement: r13 := @this: com.mysql.cj.xdevapi.SessionFactory 
(assert (not (= var2047 null-var3520)))
(declare-const var1253 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1253 null-String)))
(define-const var1511 var2953 (var2953_getConnectionUrlInstance/2074474753 var1253 null-var3392)) ; Statement: r1 = staticinvoke <com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.ConnectionUrl getConnectionUrlInstance(java.lang.String,java.util.Properties)>(r0, null) 
 ; Statement: if r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var1511 null-var2953)) ; Cond: r1 == null 
(define-const var3212 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3212)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3212!1 String)
(assert (= var3212!1 ""))
(assert true)
(define-const var1491 String (append/672562846 var3212!1 "Initialization via URL failed for \u0022")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Initialization via URL failed for \"") 
(declare-const var3212!2 String)
(assert (= var3212!2 (str.++ var3212!1 "Initialization via URL failed for \u0022")))
(assert true)
(define-const var527 String (append/672562846 var1491 var1253)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1491!1 String)
(assert (= var1491!1 (str.++ var1491 var1253)))
(assert true)
(define-const var1028 String (append/672562846 var527 "\u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var527!1 String)
(assert (= var527!1 (str.++ var527 "\u0022")))
(assert true)
(define-const var3714 String (toString/-2075883882 var1028)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1027 var4 (var2767_createException/361149092 var2856!class var3714)) ; Statement: $r7 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/InvalidConnectionAttributeException;", $r6) 
(define-const var327 var2856 (cast-from-var4-to-var2856 var1027)) ; Statement: $r8 = (com.mysql.cj.exceptions.InvalidConnectionAttributeException) $r7 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2953_getConnectionUrlInstance/2074474753=([java.lang.String, java.util.Properties], com.mysql.cj.conf.ConnectionUrl), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2767_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var4-to-var2856=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.InvalidConnectionAttributeException)}
; {var3520=com.mysql.cj.xdevapi.SessionFactory, var2047=r13, var1253=r0, var1695=null_type, var2953=com.mysql.cj.conf.ConnectionUrl, var3392=java.util.Properties, var1511=r1, var3212=$r2, var1491=$r3, var527=$r4, var1028=$r5, var3714=$r6, var4=com.mysql.cj.exceptions.CJException, var2767=com.mysql.cj.exceptions.ExceptionFactory, var2856=com.mysql.cj.exceptions.InvalidConnectionAttributeException, var1027=$r7, var327=$r8}
; {com.mysql.cj.xdevapi.SessionFactory=var3520, r13=var2047, r0=var1253, null_type=var1695, com.mysql.cj.conf.ConnectionUrl=var2953, java.util.Properties=var3392, r1=var1511, $r2=var3212, $r3=var1491, $r4=var527, $r5=var1028, $r6=var3714, com.mysql.cj.exceptions.CJException=var4, com.mysql.cj.exceptions.ExceptionFactory=var2767, com.mysql.cj.exceptions.InvalidConnectionAttributeException=var2856, $r7=var1027, $r8=var327}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: com.mysql.cj.xdevapi.SessionFactory;	r0 := @parameter0: java.lang.String;	r1 = staticinvoke <com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.ConnectionUrl getConnectionUrlInstance(java.lang.String,java.util.Properties)>(r0, null);	if r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Initialization via URL failed for \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/InvalidConnectionAttributeException;", $r6);	$r8 = (com.mysql.cj.exceptions.InvalidConnectionAttributeException) $r7;	throw $r8
;block_num 2