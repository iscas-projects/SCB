(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3897 0)
(declare-sort var2121 0)
(declare-sort var1299 0)
(declare-sort var1207 0)
(declare-sort var1910 0)
(declare-sort var532 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1207_warn/1799138989 (var1207 var1910 var532) void)
(declare-fun cast-from-String-to-var1910 (String) var1910)
(declare-fun cast-from-var1299-to-var532 (var1299) var532)
(declare-const null-var3897 var3897)
(declare-const null-String String)
(declare-const null-var1299 var1299)
(declare-const var3897-log var1207)
(declare-const var1209 var3897) ; Statement: r4 := @this: org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl 
(assert (not (= var1209 null-var3897)))
(declare-const var2796 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2796 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3672 var1299) ; Statement: $r7 := @caughtexception 
(assert (not (= var3672 null-var1299)))
(define-const var3121 var1207 var3897-log) ; Statement: $r9 = <org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl: org.hibernate.internal.CoreMessageLogger log> 
(define-const var1535 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1535)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1535!1 String)
(assert (= var1535!1 ""))
(assert true)
(define-const var42 String (append/672562846 var1535!1 "LinkageError while attempting to load Package named ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LinkageError while attempting to load Package named ") 
(declare-const var1535!2 String)
(assert (= var1535!2 (str.++ var1535!1 "LinkageError while attempting to load Package named ")))
(assert true)
(define-const var1171 String (append/672562846 var42 var2796)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var42!1 String)
(assert (= var42!1 (str.++ var42 var2796)))
(assert true)
(define-const var1371 String (toString/-2075883882 var1171)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1207_warn/1799138989 var3121 (cast-from-String-to-var1910 var1371) (cast-from-var1299-to-var532 var3672))) ; Statement: interfaceinvoke $r9.<org.hibernate.internal.CoreMessageLogger: void warn(java.lang.Object,java.lang.Throwable)>($r12, $r7) 

(declare-const var3121!1 var1207)
(declare-const var1371!1 String)
(declare-const var3672!1 var1299)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1207_warn/1799138989=([org.hibernate.internal.CoreMessageLogger, java.lang.Object, java.lang.Throwable], void), cast-from-String-to-var1910=([java.lang.String], java.lang.Object), cast-from-var1299-to-var532=([java.lang.LinkageError], java.lang.Throwable)}
; {var3897=org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl, var1209=r4, var2796=r1, var2121=null_type, var1299=java.lang.LinkageError, var3672=$r7, var1207=org.hibernate.internal.CoreMessageLogger, var3121=$r9, var1535=$r8, var42=$r10, var1171=$r11, var1371=$r12, var1910=java.lang.Object, var532=java.lang.Throwable}
; {org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl=var3897, r4=var1209, r1=var2796, null_type=var2121, java.lang.LinkageError=var1299, $r7=var3672, org.hibernate.internal.CoreMessageLogger=var1207, $r9=var3121, $r8=var1535, $r10=var42, $r11=var1171, $r12=var1371, java.lang.Object=var1910, java.lang.Throwable=var532}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl;	r1 := @parameter0: java.lang.String;	$r7 := @caughtexception;	$r9 = <org.hibernate.boot.registry.classloading.internal.ClassLoaderServiceImpl: org.hibernate.internal.CoreMessageLogger log>;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LinkageError while attempting to load Package named ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r9.<org.hibernate.internal.CoreMessageLogger: void warn(java.lang.Object,java.lang.Throwable)>($r12, $r7);	return null
;block_num 2