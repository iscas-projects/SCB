(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3439 0)
(declare-sort var2174 0)
(declare-sort var513 0)
(declare-sort var683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var513!class ClassObject)
(declare-fun getClassLoader/-563698447 (ClassObject) var2174)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var513_objectId/1952731062 (var683) String)
(declare-fun cast-from-var2174-to-var683 (var2174) var683)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var513_logDiagnostic/1268238408 (String) void)
(declare-fun ClassObject_forName/696536127 (String Bool var2174) ClassObject)
(declare-const null-String String)
(declare-const null-var2174 var2174)
(declare-const var973 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var973 null-String)))
(declare-const var2985 var2174) ; Statement: r10 := @parameter1: java.lang.ClassLoader 
(assert (not (= var2985 null-var2174)))
(define-const var3571 ClassObject var513!class) ; Statement: $r0 = class "Lorg/apache/commons/logging/LogFactory;" 
(assert true)
(define-const var732 var2174 (getClassLoader/-563698447 var3571)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(define-const var1527 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1527)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1527!1 String)
(assert (= var1527!1 ""))
(assert true)
(define-const var3422 String (append/672562846 var1527!1 "Checking if class \u0027")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking if class \'") 
(declare-const var1527!2 String)
(assert (= var1527!2 (str.++ var1527!1 "Checking if class \u0027")))
(assert true)
(define-const var2555 String (append/672562846 var3422 var973)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3422!1 String)
(assert (= var3422!1 (str.++ var3422 var973)))
(assert true)
(define-const var689 String (append/672562846 var2555 "\u0027 is available in class loader ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available in class loader ") 
(declare-const var2555!1 String)
(assert (= var2555!1 (str.++ var2555 "\u0027 is available in class loader ")))
(define-const var2029 String (var513_objectId/1952731062 (cast-from-var2174-to-var683 var732))) ; Statement: $r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r1) 
(assert true)
(define-const var3719 String (append/672562846 var689 var2029)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var689!1 String)
(assert (= var689!1 (str.++ var689 var2029)))
(assert true)
(define-const var699 String (toString/-2075883882 var3719)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var513_logDiagnostic/1268238408 var699)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9) 

(declare-const var699!1 String)
(assert true) ; Non Conditional
;(assert (ClassObject_forName/696536127 var973 (ite (= 1 1) true false) var2985)) ; Statement: staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String,boolean,java.lang.ClassLoader)>(r3, 1, r10) 

(declare-const var973!1 String)
(declare-const var430 Int)
(declare-const var2985!1 var2174)
(assert true) ; Non Conditional
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var513_objectId/1952731062=([java.lang.Object], java.lang.String), cast-from-var2174-to-var683=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var513_logDiagnostic/1268238408=([java.lang.String], void), ClassObject_forName/696536127=([java.lang.String, boolean, java.lang.ClassLoader], java.lang.Class)}
; {var973=r3, var3439=null_type, var2174=java.lang.ClassLoader, var2985=r10, var513=org.apache.commons.logging.LogFactory, var3571=$r0, var732=r1, var1527=$r2, var3422=$r4, var2555=$r5, var689=$r7, var683=java.lang.Object, var2029=$r6, var3719=$r8, var699=$r9, var430=1}
; {r3=var973, null_type=var3439, java.lang.ClassLoader=var2174, r10=var2985, org.apache.commons.logging.LogFactory=var513, $r0=var3571, r1=var732, $r2=var1527, $r4=var3422, $r5=var2555, $r7=var689, java.lang.Object=var683, $r6=var2029, $r8=var3719, $r9=var699, 1=var430}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r10 := @parameter1: java.lang.ClassLoader;	$r0 = class "Lorg/apache/commons/logging/LogFactory;";	r1 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking if class \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available in class loader ");	$r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9);	staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String,boolean,java.lang.ClassLoader)>(r3, 1, r10);	return 1
;block_num 3