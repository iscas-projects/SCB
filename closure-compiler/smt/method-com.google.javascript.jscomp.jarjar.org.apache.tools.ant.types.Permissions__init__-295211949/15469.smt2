(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1863 0)
(declare-sort var3900 0)
(declare-sort var3577 0)
(declare-sort var2 0)
(declare-sort var1098 0)
(declare-sort var288 0)
(declare-sort var3462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3900-init () var3900)
(declare-fun <init>/169859851 (var3900) void)
(declare-fun granted/533487664 (var1863) var3900)
(declare-fun revokedPermissions/533487664 (var1863) var3577)
(declare-fun var3577_iterator/-912451715 (var3577) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2)
(declare-fun cast-from-var2-to-var1098 (var2) var1098)
(declare-fun getClassName/107490466 (var1098) String)
(declare-fun var3462-init () var3462)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2) String)
(declare-fun cast-from-var1098-to-var2 (var1098) var2)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3462 String) void)
(declare-const null-var1863 var1863)
(declare-const null-String String)
(declare-const var3781 var1863) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions 
(assert (not (= var3781 null-var1863)))
(define-const var3444 var3900 var3900-init) ; Statement: $r1 = new java.security.Permissions 
(assert true)
;(assert (<init>/169859851 var3444)) ; Statement: specialinvoke $r1.<java.security.Permissions: void <init>()>() 

(declare-const var3444!1 var3900)
(declare-const var3781!1 var1863)
(assert (not (= var3781!1 null-var1863)))
(assert (= (granted/533487664 var3781!1) var3444!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions: java.security.Permissions granted> = $r1 
(define-const var206 var3577 (revokedPermissions/533487664 var3781!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions: java.util.List revokedPermissions> 
(define-const var3805 Iterator (var3577_iterator/-912451715 var206)) ; Statement: r64 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1246 Bool (Iterator_hasNext/-1669924200 var3805)) ; Statement: $z0 = interfaceinvoke r64.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions: java.util.List grantedPermissions> 
(assert (not (= (ite var1246 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2544 var2 (Iterator_next/-1124697587 var3805)) ; Statement: $r56 = interfaceinvoke r64.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3805!1 Iterator)
(define-const var2105 var1098 (cast-from-var2-to-var1098 var2544)) ; Statement: r65 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission) $r56 
(assert true)
(define-const var918 String (getClassName/107490466 var2105)) ; Statement: $r57 = virtualinvoke r65.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String getClassName()>() 
 ; Statement: if $r57 != null goto (branch) 
(assert (not (not (= var918 null-String)))) ; Negate: Cond: $r57 != null  
(define-const var1695 var3462 var3462-init) ; Statement: $r58 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2045 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2045)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2045!1 String)
(assert (= var2045!1 ""))
(assert true)
(define-const var2322 String (append/672562846 var2045!1 "Revoked permission ")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Revoked permission ") 
(declare-const var2045!2 String)
(assert (= var2045!2 (str.++ var2045!1 "Revoked permission ")))
(assert true)
(define-const var577 String (append/-1031950772 var2322 (cast-from-var1098-to-var2 var2105))) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r65) 
(declare-const var2322!1 String)
(assert (str.prefixof var2322 var2322!1))
(assert true)
(define-const var3780 String (append/672562846 var577 " does not contain a class.")) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not contain a class.") 
(declare-const var577!1 String)
(assert (= var577!1 (str.++ var577 " does not contain a class.")))
(assert true)
(define-const var3373 String (toString/-2075883882 var3780)) ; Statement: $r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1695 var3373)) ; Statement: specialinvoke $r58.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r63) 

(declare-const var1695!1 var3462)
(declare-const var3373!1 String)
 ; Statement: throw $r58 
(check-sat)
(get-model)
(get-unsat-core)
; {var3900-init=([], java.security.Permissions), <init>/169859851=([java.security.Permissions], void), granted/533487664=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions], java.security.Permissions), revokedPermissions/533487664=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions], java.util.List), var3577_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2-to-var1098=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission), getClassName/107490466=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission], java.lang.String), var3462-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1098-to-var2=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1863=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions, var3781=r0, var3900=java.security.Permissions, var3444=$r1, var3577=java.util.List, var206=$r2, var3805=r64, var1246=$z0, var2=java.lang.Object, var2544=$r56, var1098=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission, var2105=r65, var918=$r57, var288=null_type, var3462=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1695=$r58, var2045=$r59, var2322=$r60, var577=$r61, var3780=$r62, var3373=$r63}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions=var1863, r0=var3781, java.security.Permissions=var3900, $r1=var3444, java.util.List=var3577, $r2=var206, r64=var3805, $z0=var1246, java.lang.Object=var2, $r56=var2544, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission=var1098, r65=var2105, $r57=var918, null_type=var288, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3462, $r58=var1695, $r59=var2045, $r60=var2322, $r61=var577, $r62=var3780, $r63=var3373}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions;	$r1 = new java.security.Permissions;	specialinvoke $r1.<java.security.Permissions: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions: java.security.Permissions granted> = $r1;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions: java.util.List revokedPermissions>;	r64 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r64.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions: java.util.List grantedPermissions>;	$r56 = interfaceinvoke r64.<java.util.Iterator: java.lang.Object next()>();	r65 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission) $r56;	$r57 = virtualinvoke r65.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String getClassName()>();	if $r57 != null goto (branch);	$r58 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Revoked permission ");	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r65);	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not contain a class.");	$r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r58.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r63);	throw $r58
;block_num 4