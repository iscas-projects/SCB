(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2692 0)
(declare-sort var3032 0)
(declare-sort var773 0)
(declare-sort var3376 0)
(declare-sort var3800 0)
(declare-sort var3836 0)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAnnotationElements/-189522066 (var3032) var773)
(declare-fun printAnnotations/-710165254 (var2692 Int var773) void)
(declare-fun printIndent/679039472 (var3376) void)
(declare-fun cast-from-var2692-to-var3376 (var2692) var3376)
(declare-fun var3800_getInstance/1606271130 () var3800)
(declare-fun getType/1226082839 (var3800 var2437) var3836)
(declare-fun cast-from-var3032-to-var2437 (var3032) var2437)
(declare-fun getSuperType/1720819459 (var3836) String)
(declare-fun getTypeName/-1561139576 (var3032) String)
(declare-fun makeSimpleType/224737714 (var2692 String) String)
(declare-fun print/169216161 (var3376 String) void)
(declare-fun isArray/-1778365829 (var3032) Bool)
(declare-fun getName/-812373214 (var3032) String)
(declare-fun getTypeId/1035435329 (var3032) Int)
(declare-fun printCommentRef/-1249268868 (var2692 Int Int) void)
(declare-const null-var2692 var2692)
(declare-const null-Int Int)
(declare-const null-var3032 var3032)
(declare-const null-Bool Bool)
(declare-const var3836-SUPER_TYPE_SETTING String)
(declare-const var3943 var2692) ; Statement: r0 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var3943 null-var2692)))
(declare-const var2986 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2986 null-Int)))
(declare-const var639 var3032) ; Statement: r1 := @parameter1: jdk.jfr.ValueDescriptor 
(assert (not (= var639 null-var3032)))
(declare-const var374 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var374 null-Bool)))
 ; Statement: if z0 != 0 goto $r2 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.util.List getAnnotationElements()>() 
(assert (not (= (ite var374 1 0) 0))) ; Cond: z0 != 0 
(assert true)
(define-const var2869 var773 (getAnnotationElements/-189522066 var639)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.util.List getAnnotationElements()>() 
(assert true)
;(assert (printAnnotations/-710165254 var3943 var2986 var2869)) ; Statement: specialinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printAnnotations(int,java.util.List)>(i0, $r2) 

(declare-const var3943!1 var2692)
(declare-const var2986!1 Int)
(declare-const var2869!1 var773)
(assert true)
;(assert (printIndent/679039472 (cast-from-var2692-to-var3376 var3943!1))) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printIndent()>() 

(declare-const var3943!2 var2692)
(define-const var357 var3800 var3800_getInstance/1606271130) ; Statement: $r3 = staticinvoke <jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.PrivateAccess getInstance()>() 
(assert true)
(define-const var8 var3836 (getType/1226082839 var357 (cast-from-var3032-to-var2437 var639))) ; Statement: $r9 = virtualinvoke $r3.<jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.Type getType(java.lang.Object)>(r1) 
(define-const var1600 String var3836-SUPER_TYPE_SETTING) ; Statement: $r4 = <jdk.jfr.internal.Type: java.lang.String SUPER_TYPE_SETTING> 
(assert true)
(define-const var2819 String (getSuperType/1720819459 var8)) ; Statement: $r5 = virtualinvoke $r9.<jdk.jfr.internal.Type: java.lang.String getSuperType()>() 
(assert true)
(define-const var3915 Bool (= var1600 var2819)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z1 == 0 goto $r6 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>() 
(assert (= (ite var3915 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3934 String (getTypeName/-1561139576 var639)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>() 
(assert true)
(define-const var110 String (makeSimpleType/224737714 var3943!2 var3934)) ; Statement: $r7 = specialinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: java.lang.String makeSimpleType(java.lang.String)>($r6) 
(assert true)
;(assert (print/169216161 (cast-from-var2692-to-var3376 var3943!2) var110)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>($r7) 

(declare-const var3943!3 var2692)
(declare-const var110!1 String)
(assert true)
(define-const var1748 Bool (isArray/-1778365829 var639)) ; Statement: $z2 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: boolean isArray()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>(" ") 
(assert (= (ite var1748 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (print/169216161 (cast-from-var2692-to-var3376 var3943!3) " ")) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>(" ") 

(declare-const var3943!4 var2692)
(declare-const var899 String)
(assert true)
(define-const var1502 String (getName/-812373214 var639)) ; Statement: $r8 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.lang.String getName()>() 
(assert true)
;(assert (print/169216161 (cast-from-var2692-to-var3376 var3943!4) var1502)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>($r8) 

(declare-const var3943!5 var2692)
(declare-const var1502!1 String)
(assert true)
;(assert (print/169216161 (cast-from-var2692-to-var3376 var3943!5) ";")) ; Statement: virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>(";") 

(declare-const var3943!6 var2692)
(declare-const var2647 String)
(assert true)
(define-const var3589 Int (getTypeId/1035435329 var639)) ; Statement: $l1 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: long getTypeId()>() 
(assert true)
;(assert (printCommentRef/-1249268868 var3943!6 var2986!1 var3589)) ; Statement: specialinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printCommentRef(int,long)>(i0, $l1) 

(declare-const var3943!7 var2692)
(declare-const var2986!2 Int)
(declare-const var3589!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotationElements/-189522066=([jdk.jfr.ValueDescriptor], java.util.List), printAnnotations/-710165254=([jdk.jfr.internal.tool.PrettyWriter, int, java.util.List], void), printIndent/679039472=([jdk.jfr.internal.tool.StructuredWriter], void), cast-from-var2692-to-var3376=([jdk.jfr.internal.tool.PrettyWriter], jdk.jfr.internal.tool.StructuredWriter), var3800_getInstance/1606271130=([], jdk.jfr.internal.PrivateAccess), getType/1226082839=([jdk.jfr.internal.PrivateAccess, java.lang.Object], jdk.jfr.internal.Type), cast-from-var3032-to-var2437=([jdk.jfr.ValueDescriptor], java.lang.Object), getSuperType/1720819459=([jdk.jfr.internal.Type], java.lang.String), getTypeName/-1561139576=([jdk.jfr.ValueDescriptor], java.lang.String), makeSimpleType/224737714=([jdk.jfr.internal.tool.PrettyWriter, java.lang.String], java.lang.String), print/169216161=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void), isArray/-1778365829=([jdk.jfr.ValueDescriptor], boolean), getName/-812373214=([jdk.jfr.ValueDescriptor], java.lang.String), getTypeId/1035435329=([jdk.jfr.ValueDescriptor], long), printCommentRef/-1249268868=([jdk.jfr.internal.tool.PrettyWriter, int, long], void)}
; {var2692=jdk.jfr.internal.tool.PrettyWriter, var3943=r0, var2986=i0, var3032=jdk.jfr.ValueDescriptor, var639=r1, var374=z0, var773=java.util.List, var2869=$r2, var3376=jdk.jfr.internal.tool.StructuredWriter, var3800=jdk.jfr.internal.PrivateAccess, var357=$r3, var3836=jdk.jfr.internal.Type, var2437=java.lang.Object, var8=$r9, var1600=$r4, var2819=$r5, var3915=$z1, var3934=$r6, var110=$r7, var1748=$z2, var899=" ", var1502=$r8, var2647=";", var3589=$l1}
; {jdk.jfr.internal.tool.PrettyWriter=var2692, r0=var3943, i0=var2986, jdk.jfr.ValueDescriptor=var3032, r1=var639, z0=var374, java.util.List=var773, $r2=var2869, jdk.jfr.internal.tool.StructuredWriter=var3376, jdk.jfr.internal.PrivateAccess=var3800, $r3=var357, jdk.jfr.internal.Type=var3836, java.lang.Object=var2437, $r9=var8, $r4=var1600, $r5=var2819, $z1=var3915, $r6=var3934, $r7=var110, $z2=var1748, " "=var899, $r8=var1502, ";"=var2647, $l1=var3589}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.PrettyWriter;	i0 := @parameter0: int;	r1 := @parameter1: jdk.jfr.ValueDescriptor;	z0 := @parameter2: boolean;	if z0 != 0 goto $r2 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.util.List getAnnotationElements()>();	$r2 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.util.List getAnnotationElements()>();	specialinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printAnnotations(int,java.util.List)>(i0, $r2);	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printIndent()>();	$r3 = staticinvoke <jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.PrivateAccess getInstance()>();	$r9 = virtualinvoke $r3.<jdk.jfr.internal.PrivateAccess: jdk.jfr.internal.Type getType(java.lang.Object)>(r1);	$r4 = <jdk.jfr.internal.Type: java.lang.String SUPER_TYPE_SETTING>;	$r5 = virtualinvoke $r9.<jdk.jfr.internal.Type: java.lang.String getSuperType()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z1 == 0 goto $r6 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>();	$r6 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.lang.String getTypeName()>();	$r7 = specialinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: java.lang.String makeSimpleType(java.lang.String)>($r6);	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>($r7);	$z2 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: boolean isArray()>();	if $z2 == 0 goto virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>(" ");	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>(" ");	$r8 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: java.lang.String getName()>();	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>($r8);	virtualinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void print(java.lang.String)>(";");	$l1 = virtualinvoke r1.<jdk.jfr.ValueDescriptor: long getTypeId()>();	specialinvoke r0.<jdk.jfr.internal.tool.PrettyWriter: void printCommentRef(int,long)>(i0, $l1);	return
;block_num 4