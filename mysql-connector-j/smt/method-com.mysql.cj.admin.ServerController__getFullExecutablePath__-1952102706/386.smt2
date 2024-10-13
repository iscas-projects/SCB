(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3280 0)
(declare-sort var3492 0)
(declare-sort var2518 0)
(declare-sort var247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getServerProps/1744411919 (var3280) var3492)
(declare-fun getProperty/1391780669 (var3492 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun getProperty/-469436802 (var3492 String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3280 var3280)
(declare-const null-String String)
(declare-const var247-separator String)
(declare-const var1327 var3280) ; Statement: r1 := @this: com.mysql.cj.admin.ServerController 
(assert (not (= var1327 null-var3280)))
(define-const var1786 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1786)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1786!1 String)
(assert (= var1786!1 ""))
(assert true)
(define-const var2019 var3492 (getServerProps/1744411919 var1327)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.admin.ServerController: java.util.Properties getServerProps()>() 
(assert true)
(define-const var1344 String (getProperty/1391780669 var2019 "executablePath")) ; Statement: r3 = virtualinvoke $r2.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("executablePath") 
 ; Statement: if r3 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(assert (not (= var1344 null-String))) ; Cond: r3 != null 
(assert true)
;(assert (append/672562846 var1786!1 var1344)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1786!2 String)
(assert (= var1786!2 (str.++ var1786!1 var1344)))
(define-const var2556 String var247-separator) ; Statement: $r4 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var818 Bool (endsWith/985337093 var1344 var2556)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>($r4) 
 ; Statement: if $z0 != 0 goto $r8 = virtualinvoke r1.<com.mysql.cj.admin.ServerController: java.util.Properties getServerProps()>() 
(assert (not (= (ite var818 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var274 var3492 (getServerProps/1744411919 var1327)) ; Statement: $r8 = virtualinvoke r1.<com.mysql.cj.admin.ServerController: java.util.Properties getServerProps()>() 
(assert true)
(define-const var424 String (getProperty/-469436802 var274 "executable" "mysqld")) ; Statement: $r9 = virtualinvoke $r8.<java.util.Properties: java.lang.String getProperty(java.lang.String,java.lang.String)>("executable", "mysqld") 
(assert true)
;(assert (append/672562846 var1786!2 var424)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1786!3 String)
(assert (= var1786!3 (str.++ var1786!2 var424)))
(assert true)
(define-const var2145 String (toString/-2075883882 var1786!3)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getServerProps/1744411919=([com.mysql.cj.admin.ServerController], java.util.Properties), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), endsWith/985337093=([java.lang.String, java.lang.String], boolean), getProperty/-469436802=([java.util.Properties, java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3280=com.mysql.cj.admin.ServerController, var1327=r1, var1786=$r0, var3492=java.util.Properties, var2019=$r2, var1344=r3, var2518=null_type, var247=java.io.File, var2556=$r4, var818=$z0, var274=$r8, var424=$r9, var2145=$r10}
; {com.mysql.cj.admin.ServerController=var3280, r1=var1327, $r0=var1786, java.util.Properties=var3492, $r2=var2019, r3=var1344, null_type=var2518, java.io.File=var247, $r4=var2556, $z0=var818, $r8=var274, $r9=var424, $r10=var2145}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.admin.ServerController;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.mysql.cj.admin.ServerController: java.util.Properties getServerProps()>();	r3 = virtualinvoke $r2.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("executablePath");	if r3 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r4 = <java.io.File: java.lang.String separator>;	$z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>($r4);	if $z0 != 0 goto $r8 = virtualinvoke r1.<com.mysql.cj.admin.ServerController: java.util.Properties getServerProps()>();	$r8 = virtualinvoke r1.<com.mysql.cj.admin.ServerController: java.util.Properties getServerProps()>();	$r9 = virtualinvoke $r8.<java.util.Properties: java.lang.String getProperty(java.lang.String,java.lang.String)>("executable", "mysqld");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3