(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3855 0)
(declare-sort var2567 0)
(declare-sort var3059 0)
(declare-sort var3506 0)
(declare-sort var1513 0)
(declare-sort var2773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3506-init () var3506)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1513) String)
(declare-fun cast-from-var3059-to-var1513 (var3059) var1513)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var3506 String var2773) void)
(declare-fun cast-from-var3059-to-var2773 (var3059) var2773)
(declare-const null-var3855 var3855)
(declare-const null-String String)
(declare-const null-var3059 var3059)
(declare-const var2508 var3855) ; Statement: r7 := @this: org.apache.ibatis.builder.BaseBuilder 
(assert (not (= var2508 null-var3855)))
(declare-const var1437 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1437 null-String)))
 ; Statement: if r0 != null goto $r8 = staticinvoke <org.apache.ibatis.type.JdbcType: org.apache.ibatis.type.JdbcType valueOf(java.lang.String)>(r0) 
(assert (not (not (= var1437 null-String)))) ; Negate: Cond: r0 != null  
(declare-const var3806 var3059) ; Statement: $r1 := @caughtexception 
(assert (not (= var3806 null-var3059)))
(define-const var1027 var3506 var3506-init) ; Statement: $r2 = new org.apache.ibatis.builder.BuilderException 
(define-const var1011 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1011)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1011!1 String)
(assert (= var1011!1 ""))
(assert true)
(define-const var1945 String (append/672562846 var1011!1 "Error resolving JdbcType. Cause: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving JdbcType. Cause: ") 
(declare-const var1011!2 String)
(assert (= var1011!2 (str.++ var1011!1 "Error resolving JdbcType. Cause: ")))
(assert true)
(define-const var1352 String (append/-1031950772 var1945 (cast-from-var3059-to-var1513 var3806))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1) 
(declare-const var1945!1 String)
(assert (str.prefixof var1945 var1945!1))
(assert true)
(define-const var3535 String (toString/-2075883882 var1352)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var1027 var3535 (cast-from-var3059-to-var2773 var3806))) ; Statement: specialinvoke $r2.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r1) 

(declare-const var1027!1 var3506)
(declare-const var3535!1 String)
(declare-const var3806!1 var3059)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3506-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3059-to-var1513=([java.lang.IllegalArgumentException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var3059-to-var2773=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var3855=org.apache.ibatis.builder.BaseBuilder, var2508=r7, var1437=r0, var2567=null_type, var3059=java.lang.IllegalArgumentException, var3806=$r1, var3506=org.apache.ibatis.builder.BuilderException, var1027=$r2, var1011=$r3, var1945=$r4, var1513=java.lang.Object, var1352=$r5, var3535=$r6, var2773=java.lang.Throwable}
; {org.apache.ibatis.builder.BaseBuilder=var3855, r7=var2508, r0=var1437, null_type=var2567, java.lang.IllegalArgumentException=var3059, $r1=var3806, org.apache.ibatis.builder.BuilderException=var3506, $r2=var1027, $r3=var1011, $r4=var1945, java.lang.Object=var1513, $r5=var1352, $r6=var3535, java.lang.Throwable=var2773}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.builder.BaseBuilder;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r8 = staticinvoke <org.apache.ibatis.type.JdbcType: org.apache.ibatis.type.JdbcType valueOf(java.lang.String)>(r0);	$r1 := @caughtexception;	$r2 = new org.apache.ibatis.builder.BuilderException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving JdbcType. Cause: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r1);	throw $r2
;block_num 2