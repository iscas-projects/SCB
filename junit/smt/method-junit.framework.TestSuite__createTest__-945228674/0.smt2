(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2216 0)
(declare-sort var3869 0)
(declare-sort var2398 0)
(declare-sort var3468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3468_warning/1983827524 (String) var2398)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var3869 var3869)
(declare-const var2214 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2214 null-ClassObject)))
(declare-const var833 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var833 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var831 var3869) ; Statement: $r38 := @caughtexception 
(assert (not (= var831 null-var3869)))
(define-const var3035 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3035)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3035!1 String)
(assert (= var3035!1 ""))
(assert true)
(define-const var3267 String (append/672562846 var3035!1 "Class ")) ; Statement: $r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var3035!2 String)
(assert (= var3035!2 (str.++ var3035!1 "Class ")))
(assert true)
(define-const var3567 String (getName/-1958580599 var2214)) ; Statement: $r40 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2582 String (append/672562846 var3267 var3567)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var3267!1 String)
(assert (= var3267!1 (str.++ var3267 var3567)))
(assert true)
(define-const var1522 String (append/672562846 var2582 " has no public constructor TestCase(String name) or TestCase()")) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no public constructor TestCase(String name) or TestCase()") 
(declare-const var2582!1 String)
(assert (= var2582!1 (str.++ var2582 " has no public constructor TestCase(String name) or TestCase()")))
(assert true)
(define-const var3348 String (toString/-2075883882 var1522)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var511 var2398 (var3468_warning/1983827524 var3348)) ; Statement: $r45 = staticinvoke <junit.framework.TestSuite: junit.framework.Test warning(java.lang.String)>($r44) 
 ; Statement: return $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3468_warning/1983827524=([java.lang.String], junit.framework.Test)}
; {var2214=r0, var833=r4, var2216=null_type, var3869=java.lang.NoSuchMethodException, var831=$r38, var3035=$r39, var3267=$r41, var3567=$r40, var2582=$r42, var1522=$r43, var3348=$r44, var2398=junit.framework.Test, var3468=junit.framework.TestSuite, var511=$r45}
; {r0=var2214, r4=var833, null_type=var2216, java.lang.NoSuchMethodException=var3869, $r38=var831, $r39=var3035, $r41=var3267, $r40=var3567, $r42=var2582, $r43=var1522, $r44=var3348, junit.framework.Test=var2398, junit.framework.TestSuite=var3468, $r45=var511}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r4 := @parameter1: java.lang.String;	$r38 := @caughtexception;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r40 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no public constructor TestCase(String name) or TestCase()");	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	$r45 = staticinvoke <junit.framework.TestSuite: junit.framework.Test warning(java.lang.String)>($r44);	return $r45
;block_num 2