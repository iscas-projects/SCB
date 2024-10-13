(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1212 0)
(declare-sort var2197 0)
(declare-sort var2357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2357!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTypeClass/-1250152788 (var2197) ClassObject)
(declare-fun cast-from-var1212-to-var2197 (var1212) var2197)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1212 var1212)
(declare-const var2180 var1212) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.types.ObjectType 
(assert (not (= var2180 null-var1212)))
(define-const var888 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var888)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var888!1 String)
(assert (= var888!1 ""))
(assert true)
(define-const var3570 String (append/672562846 var888!1 "object")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object") 
(declare-const var888!2 String)
(assert (= var888!2 (str.++ var888!1 "object")))
(assert true)
(define-const var110 ClassObject (getTypeClass/-1250152788 (cast-from-var1212-to-var2197 var2180))) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.ObjectType: java.lang.Class getTypeClass()>() 
 ; Statement: if $r2 == class "Ljava/lang/Object;" goto $r12 = "" 
(assert (= var110 var2357!class)) ; Cond: $r2 == class "Ljava/lang/Object;" 
(define-const var2098 String "") ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3342 String (append/672562846 var3570 var2098)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3570!1 String)
(assert (= var3570!1 (str.++ var3570 var2098)))
(assert true)
(define-const var3706 String (toString/-2075883882 var3342)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTypeClass/-1250152788=([jdk.nashorn.internal.codegen.types.Type], java.lang.Class), cast-from-var1212-to-var2197=([jdk.nashorn.internal.codegen.types.ObjectType], jdk.nashorn.internal.codegen.types.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1212=jdk.nashorn.internal.codegen.types.ObjectType, var2180=r1, var888=$r0, var3570=$r3, var2197=jdk.nashorn.internal.codegen.types.Type, var110=$r2, var2357=java.lang.Object, var2098=$r12, var3342=$r4, var3706=$r5}
; {jdk.nashorn.internal.codegen.types.ObjectType=var1212, r1=var2180, $r0=var888, $r3=var3570, jdk.nashorn.internal.codegen.types.Type=var2197, $r2=var110, java.lang.Object=var2357, $r12=var2098, $r4=var3342, $r5=var3706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.types.ObjectType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object");	$r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.ObjectType: java.lang.Class getTypeClass()>();	if $r2 == class "Ljava/lang/Object;" goto $r12 = "";	$r12 = "";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3