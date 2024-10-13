(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1891 0)
(declare-sort var1834 0)
(declare-sort var3456 0)
(declare-sort var1854 0)
(declare-sort var1454 0)
(declare-sort var3760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun functionNodeId/-210121074 (var1891) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun paramTypes/-210121074 (var1891) (Array Int var3456))
(declare-fun var1854_toString/-575966009 ((Array Int var1454)) String)
(declare-fun cast-from-__Array__Int__var3456__-to-__Array__Int__var1454__ ((Array Int var3456)) (Array Int var1454))
(declare-fun returnType/-210121074 (var1891) var3456)
(declare-fun cast-from-String-to-var3760 (String) var3760)
(declare-fun append/-1031950772 (String var1454) String)
(declare-fun cast-from-var3760-to-var1454 (var3760) var1454)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1891 var1891)
(declare-const null-String String)
(declare-const null-var3456 var3456)
(declare-const var554 var1891) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.TypeMap 
(assert (not (= var554 null-var1891)))
(declare-const var137 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var137 null-String)))
(define-const var56 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var56)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var56!1 String)
(assert (= var56!1 ""))
(define-const var3974 Int (functionNodeId/-210121074 var554)) ; Statement: i0 = r1.<jdk.nashorn.internal.codegen.TypeMap: int functionNodeId> 
(assert true)
(define-const var3584 String (append/672562846 var56!1 var137)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var56!2 String)
(assert (= var56!2 (str.++ var56!1 var137)))
(assert true)
;(assert (append/-1166366385 var3584 9)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(9) 
(declare-const var3584!1 String)
(assert (str.prefixof var3584 var3584!1))
(assert true)
(define-const var1139 String (append/672562846 var56!2 "function ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function ") 
(declare-const var56!3 String)
(assert (= var56!3 (str.++ var56!2 "function ")))
(assert true)
(define-const var1055 String (append/-1001720160 var1139 var3974)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1139!1 String)
(assert (str.prefixof var1139 var1139!1))
(assert true)
;(assert (append/-1166366385 var1055 10)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1055!1 String)
(assert (str.prefixof var1055 var1055!1))
(assert true)
(define-const var3027 String (append/672562846 var56!3 var137)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var56!4 String)
(assert (= var56!4 (str.++ var56!3 var137)))
(assert true)
;(assert (append/672562846 var3027 "\t\tparamTypes=")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\tparamTypes=") 
(declare-const var3027!1 String)
(assert (= var3027!1 (str.++ var3027 "\t\tparamTypes=")))
(define-const var3906 (Array Int var3456) (paramTypes/-210121074 var554)) ; Statement: $r7 = r1.<jdk.nashorn.internal.codegen.TypeMap: jdk.nashorn.internal.codegen.types.Type[] paramTypes> 
(define-const var725 String (var1854_toString/-575966009 (cast-from-__Array__Int__var3456__-to-__Array__Int__var1454__ var3906))) ; Statement: $r8 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r7) 
(assert true)
;(assert (append/672562846 var56!4 var725)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var56!5 String)
(assert (= var56!5 (str.++ var56!4 var725)))
(assert true)
;(assert (append/-1166366385 var56!5 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var56!6 String)
(assert (str.prefixof var56!5 var56!6))
(assert true)
(define-const var2567 String (append/672562846 var56!6 var137)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var56!7 String)
(assert (= var56!7 (str.++ var56!6 var137)))
(assert true)
;(assert (append/672562846 var2567 "\t\treturnType=")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\treturnType=") 
(declare-const var2567!1 String)
(assert (= var2567!1 (str.++ var2567 "\t\treturnType=")))
(define-const var2180 var3456 (returnType/-210121074 var554)) ; Statement: r10 = r1.<jdk.nashorn.internal.codegen.TypeMap: jdk.nashorn.internal.codegen.types.Type returnType> 
 ; Statement: if r10 != null goto $r12 = r10 
(assert (not (not (= var2180 null-var3456)))) ; Negate: Cond: r10 != null  
(define-const var243 var3760 (cast-from-String-to-var3760 "N/A")) ; Statement: $r12 = "N/A" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1031950772 var56!7 (cast-from-var3760-to-var1454 var243))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var56!8 String)
(assert (str.prefixof var56!7 var56!8))
(assert true)
;(assert (append/-1166366385 var56!8 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var56!9 String)
(assert (str.prefixof var56!8 var56!9))
(assert true)
(define-const var2349 String (toString/-2075883882 var56!9)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), functionNodeId/-210121074=([jdk.nashorn.internal.codegen.TypeMap], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), paramTypes/-210121074=([jdk.nashorn.internal.codegen.TypeMap], jdk.nashorn.internal.codegen.types.Type[]), var1854_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var3456__-to-__Array__Int__var1454__=([jdk.nashorn.internal.codegen.types.Type[]], java.lang.Object[]), returnType/-210121074=([jdk.nashorn.internal.codegen.TypeMap], jdk.nashorn.internal.codegen.types.Type), cast-from-String-to-var3760=([java.lang.String], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3760-to-var1454=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1891=jdk.nashorn.internal.codegen.TypeMap, var554=r1, var137=r2, var1834=null_type, var56=$r0, var3974=i0, var3584=$r3, var1139=$r4, var1055=$r5, var3027=$r6, var3456=jdk.nashorn.internal.codegen.types.Type, var3906=$r7, var1854=java.util.Arrays, var1454=java.lang.Object, var725=$r8, var2567=$r9, var2180=r10, var3760=java.io.Serializable, var243=$r12, var2349=$r11}
; {jdk.nashorn.internal.codegen.TypeMap=var1891, r1=var554, r2=var137, null_type=var1834, $r0=var56, i0=var3974, $r3=var3584, $r4=var1139, $r5=var1055, $r6=var3027, jdk.nashorn.internal.codegen.types.Type=var3456, $r7=var3906, java.util.Arrays=var1854, java.lang.Object=var1454, $r8=var725, $r9=var2567, r10=var2180, java.io.Serializable=var3760, $r12=var243, $r11=var2349}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.TypeMap;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = r1.<jdk.nashorn.internal.codegen.TypeMap: int functionNodeId>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(9);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\tparamTypes=");	$r7 = r1.<jdk.nashorn.internal.codegen.TypeMap: jdk.nashorn.internal.codegen.types.Type[] paramTypes>;	$r8 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t\treturnType=");	r10 = r1.<jdk.nashorn.internal.codegen.TypeMap: jdk.nashorn.internal.codegen.types.Type returnType>;	if r10 != null goto $r12 = r10;	$r12 = "N/A";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3