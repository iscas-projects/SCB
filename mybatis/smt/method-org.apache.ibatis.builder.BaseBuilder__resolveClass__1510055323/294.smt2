(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var870 0)
(declare-sort var2056 0)
(declare-sort var3795 0)
(declare-sort var1337 0)
(declare-sort var365 0)
(declare-sort var1287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1337-init () var1337)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var365) String)
(declare-fun cast-from-var3795-to-var365 (var3795) var365)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var1337 String var1287) void)
(declare-fun cast-from-var3795-to-var1287 (var3795) var1287)
(declare-const null-var870 var870)
(declare-const null-String String)
(declare-const null-var3795 var3795)
(declare-const var2270 var870) ; Statement: r1 := @this: org.apache.ibatis.builder.BaseBuilder 
(assert (not (= var2270 null-var870)))
(declare-const var831 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var831 null-String)))
 ; Statement: if r0 != null goto $r8 = virtualinvoke r1.<org.apache.ibatis.builder.BaseBuilder: java.lang.Class resolveAlias(java.lang.String)>(r0) 
(assert (not (not (= var831 null-String)))) ; Negate: Cond: r0 != null  
(declare-const var2397 var3795) ; Statement: $r2 := @caughtexception 
(assert (not (= var2397 null-var3795)))
(define-const var1743 var1337 var1337-init) ; Statement: $r3 = new org.apache.ibatis.builder.BuilderException 
(define-const var389 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var389)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var389!1 String)
(assert (= var389!1 ""))
(assert true)
(define-const var3259 String (append/672562846 var389!1 "Error resolving class. Cause: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving class. Cause: ") 
(declare-const var389!2 String)
(assert (= var389!2 (str.++ var389!1 "Error resolving class. Cause: ")))
(assert true)
(define-const var3534 String (append/-1031950772 var3259 (cast-from-var3795-to-var365 var2397))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3259!1 String)
(assert (str.prefixof var3259 var3259!1))
(assert true)
(define-const var730 String (toString/-2075883882 var3534)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var1743 var730 (cast-from-var3795-to-var1287 var2397))) ; Statement: specialinvoke $r3.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r2) 

(declare-const var1743!1 var1337)
(declare-const var730!1 String)
(declare-const var2397!1 var3795)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1337-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3795-to-var365=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var3795-to-var1287=([java.lang.Exception], java.lang.Throwable)}
; {var870=org.apache.ibatis.builder.BaseBuilder, var2270=r1, var831=r0, var2056=null_type, var3795=java.lang.Exception, var2397=$r2, var1337=org.apache.ibatis.builder.BuilderException, var1743=$r3, var389=$r4, var3259=$r5, var365=java.lang.Object, var3534=$r6, var730=$r7, var1287=java.lang.Throwable}
; {org.apache.ibatis.builder.BaseBuilder=var870, r1=var2270, r0=var831, null_type=var2056, java.lang.Exception=var3795, $r2=var2397, org.apache.ibatis.builder.BuilderException=var1337, $r3=var1743, $r4=var389, $r5=var3259, java.lang.Object=var365, $r6=var3534, $r7=var730, java.lang.Throwable=var1287}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.builder.BaseBuilder;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r8 = virtualinvoke r1.<org.apache.ibatis.builder.BaseBuilder: java.lang.Class resolveAlias(java.lang.String)>(r0);	$r2 := @caughtexception;	$r3 = new org.apache.ibatis.builder.BuilderException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving class. Cause: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r2);	throw $r3
;block_num 2