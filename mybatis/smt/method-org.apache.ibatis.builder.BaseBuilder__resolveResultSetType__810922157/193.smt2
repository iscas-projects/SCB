(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var180 0)
(declare-sort var3234 0)
(declare-sort var1328 0)
(declare-sort var949 0)
(declare-sort var2791 0)
(declare-sort var2222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var949-init () var949)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2791) String)
(declare-fun cast-from-var1328-to-var2791 (var1328) var2791)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var949 String var2222) void)
(declare-fun cast-from-var1328-to-var2222 (var1328) var2222)
(declare-const null-var180 var180)
(declare-const null-String String)
(declare-const null-var1328 var1328)
(declare-const var2060 var180) ; Statement: r7 := @this: org.apache.ibatis.builder.BaseBuilder 
(assert (not (= var2060 null-var180)))
(declare-const var1026 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1026 null-String)))
 ; Statement: if r0 != null goto $r8 = staticinvoke <org.apache.ibatis.mapping.ResultSetType: org.apache.ibatis.mapping.ResultSetType valueOf(java.lang.String)>(r0) 
(assert (not (not (= var1026 null-String)))) ; Negate: Cond: r0 != null  
(declare-const var3591 var1328) ; Statement: $r1 := @caughtexception 
(assert (not (= var3591 null-var1328)))
(define-const var2276 var949 var949-init) ; Statement: $r2 = new org.apache.ibatis.builder.BuilderException 
(define-const var2514 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2514)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2514!1 String)
(assert (= var2514!1 ""))
(assert true)
(define-const var823 String (append/672562846 var2514!1 "Error resolving ResultSetType. Cause: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving ResultSetType. Cause: ") 
(declare-const var2514!2 String)
(assert (= var2514!2 (str.++ var2514!1 "Error resolving ResultSetType. Cause: ")))
(assert true)
(define-const var2647 String (append/-1031950772 var823 (cast-from-var1328-to-var2791 var3591))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1) 
(declare-const var823!1 String)
(assert (str.prefixof var823 var823!1))
(assert true)
(define-const var3966 String (toString/-2075883882 var2647)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var2276 var3966 (cast-from-var1328-to-var2222 var3591))) ; Statement: specialinvoke $r2.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r1) 

(declare-const var2276!1 var949)
(declare-const var3966!1 String)
(declare-const var3591!1 var1328)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var949-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1328-to-var2791=([java.lang.IllegalArgumentException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var1328-to-var2222=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var180=org.apache.ibatis.builder.BaseBuilder, var2060=r7, var1026=r0, var3234=null_type, var1328=java.lang.IllegalArgumentException, var3591=$r1, var949=org.apache.ibatis.builder.BuilderException, var2276=$r2, var2514=$r3, var823=$r4, var2791=java.lang.Object, var2647=$r5, var3966=$r6, var2222=java.lang.Throwable}
; {org.apache.ibatis.builder.BaseBuilder=var180, r7=var2060, r0=var1026, null_type=var3234, java.lang.IllegalArgumentException=var1328, $r1=var3591, org.apache.ibatis.builder.BuilderException=var949, $r2=var2276, $r3=var2514, $r4=var823, java.lang.Object=var2791, $r5=var2647, $r6=var3966, java.lang.Throwable=var2222}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.builder.BaseBuilder;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r8 = staticinvoke <org.apache.ibatis.mapping.ResultSetType: org.apache.ibatis.mapping.ResultSetType valueOf(java.lang.String)>(r0);	$r1 := @caughtexception;	$r2 = new org.apache.ibatis.builder.BuilderException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error resolving ResultSetType. Cause: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r1);	throw $r2
;block_num 2