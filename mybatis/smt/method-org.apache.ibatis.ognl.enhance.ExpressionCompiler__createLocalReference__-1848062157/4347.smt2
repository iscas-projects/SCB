(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3265 0)
(declare-sort var3868 0)
(declare-sort var3940 0)
(declare-sort var361 0)
(declare-sort var818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementLocalReferenceCounter/-1569277670 (var3868) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var361-init () var361)
(declare-fun <init>/1486205625 (var361 String String ClassObject) void)
(declare-fun addLocalReference/-2040317070 (var3868 String var818) void)
(declare-fun cast-from-var361-to-var818 (var361) var818)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-const null-var3265 var3265)
(declare-const null-var3868 var3868)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var780 var3265) ; Statement: r18 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler 
(assert (not (= var780 null-var3265)))
(declare-const var2997 var3868) ; Statement: r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2997 null-var3868)))
(declare-const var1346 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1346 null-String)))
(declare-const var3642 ClassObject) ; Statement: r7 := @parameter2: java.lang.Class 
(assert (not (= var3642 null-ClassObject)))
(define-const var3820 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3820)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3820!1 String)
(assert (= var3820!1 ""))
(assert true)
(define-const var1049 String (append/672562846 var3820!1 "ref")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ref") 
(declare-const var3820!2 String)
(assert (= var3820!2 (str.++ var3820!1 "ref")))
(assert true)
(define-const var1146 Int (incrementLocalReferenceCounter/-1569277670 var2997)) ; Statement: $i0 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: int incrementLocalReferenceCounter()>() 
(assert true)
(define-const var1340 String (append/-1001720160 var1049 var1146)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1049!1 String)
(assert (str.prefixof var1049 var1049!1))
(assert true)
(define-const var2855 String (toString/-2075883882 var1340)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var910 var361 var361-init) ; Statement: $r5 = new org.apache.ibatis.ognl.enhance.OgnlLocalReference 
(assert true)
;(assert (<init>/1486205625 var910 var2855 var1346 var3642)) ; Statement: specialinvoke $r5.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: void <init>(java.lang.String,java.lang.String,java.lang.Class)>(r4, r6, r7) 

(declare-const var910!1 var361)
(declare-const var2855!1 String)
(declare-const var1346!1 String)
(declare-const var3642!1 ClassObject)
(assert true)
;(assert (addLocalReference/-2040317070 var2997 var2855!1 (cast-from-var361-to-var818 var910!1))) ; Statement: virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void addLocalReference(java.lang.String,org.apache.ibatis.ognl.enhance.LocalReference)>(r4, $r5) 

(declare-const var2997!1 var3868)
(declare-const var2855!2 String)
(declare-const var910!2 var361)
(define-const var193 String "") ; Statement: r19 = "" 
(assert true)
(define-const var217 Bool (isPrimitive/-473230874 var3642!1)) ; Statement: $z0 = virtualinvoke r7.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 != 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (= (ite var217 1 0) 0))) ; Cond: $z0 != 0 
(define-const var276 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var276)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var276!1 String)
(assert (= var276!1 ""))
(assert true)
(define-const var3198 String (append/672562846 var276!1 var193)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19) 
(declare-const var276!2 String)
(assert (= var276!2 (str.++ var276!1 var193)))
(assert true)
(define-const var1362 String (append/672562846 var3198 var2855!2)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3198!1 String)
(assert (= var3198!1 (str.++ var3198 var2855!2)))
(assert true)
(define-const var356 String (append/672562846 var1362 "($$)")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("($$)") 
(declare-const var1362!1 String)
(assert (= var1362!1 (str.++ var1362 "($$)")))
(assert true)
(define-const var892 String (toString/-2075883882 var356)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementLocalReferenceCounter/-1569277670=([org.apache.ibatis.ognl.OgnlContext], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var361-init=([], org.apache.ibatis.ognl.enhance.OgnlLocalReference), <init>/1486205625=([org.apache.ibatis.ognl.enhance.OgnlLocalReference, java.lang.String, java.lang.String, java.lang.Class], void), addLocalReference/-2040317070=([org.apache.ibatis.ognl.OgnlContext, java.lang.String, org.apache.ibatis.ognl.enhance.LocalReference], void), cast-from-var361-to-var818=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], org.apache.ibatis.ognl.enhance.LocalReference), isPrimitive/-473230874=([java.lang.Class], boolean)}
; {var3265=org.apache.ibatis.ognl.enhance.ExpressionCompiler, var780=r18, var3868=org.apache.ibatis.ognl.OgnlContext, var2997=r1, var1346=r6, var3940=null_type, var3642=r7, var3820=$r0, var1049=$r2, var1146=$i0, var1340=$r3, var2855=r4, var361=org.apache.ibatis.ognl.enhance.OgnlLocalReference, var910=$r5, var818=org.apache.ibatis.ognl.enhance.LocalReference, var193=r19, var217=$z0, var276=$r8, var3198=$r9, var1362=$r10, var356=$r11, var892=$r12}
; {org.apache.ibatis.ognl.enhance.ExpressionCompiler=var3265, r18=var780, org.apache.ibatis.ognl.OgnlContext=var3868, r1=var2997, r6=var1346, null_type=var3940, r7=var3642, $r0=var3820, $r2=var1049, $i0=var1146, $r3=var1340, r4=var2855, org.apache.ibatis.ognl.enhance.OgnlLocalReference=var361, $r5=var910, org.apache.ibatis.ognl.enhance.LocalReference=var818, r19=var193, $z0=var217, $r8=var276, $r9=var3198, $r10=var1362, $r11=var356, $r12=var892}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r18 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler;	r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r6 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.Class;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ref");	$i0 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: int incrementLocalReferenceCounter()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new org.apache.ibatis.ognl.enhance.OgnlLocalReference;	specialinvoke $r5.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: void <init>(java.lang.String,java.lang.String,java.lang.Class)>(r4, r6, r7);	virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void addLocalReference(java.lang.String,org.apache.ibatis.ognl.enhance.LocalReference)>(r4, $r5);	r19 = "";	$z0 = virtualinvoke r7.<java.lang.Class: boolean isPrimitive()>();	if $z0 != 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("($$)");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2