(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2537 0)
(declare-sort var2557 0)
(declare-sort var465 0)
(declare-sort var3512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2557!class ClassObject)
(declare-fun <init>/-1407494593 (var465 ClassObject) void)
(declare-fun cast-from-var2537-to-var465 (var2537) var465)
(declare-fun var3512_toUpperCase/1913344327 (Int) Int)
(declare-fun characterValueTrue/1098249142 (var2537) Int)
(declare-fun characterValueFalse/1098249142 (var2537) Int)
(declare-fun var3512_toLowerCase/1461689736 (Int) Int)
(declare-fun characterValueTrueLC/1098249142 (var2537) Int)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun stringValueTrue/1098249142 (var2537) String)
(declare-fun stringValueFalse/1098249142 (var2537) String)
(declare-const null-var2537 var2537)
(declare-const null-Int Int)
(declare-const var1738 var2537) ; Statement: r0 := @this: org.hibernate.type.descriptor.java.BooleanTypeDescriptor 
(assert (not (= var1738 null-var2537)))
(declare-const var148 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var148 null-Int)))
(declare-const var812 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var812 null-Int)))
(assert true)
;(assert (<init>/-1407494593 (cast-from-var2537-to-var465 var1738) var2557!class)) ; Statement: specialinvoke r0.<org.hibernate.type.descriptor.java.AbstractTypeDescriptor: void <init>(java.lang.Class)>(class "Ljava/lang/Boolean;") 

(declare-const var1738!1 var2537)
(declare-const var981 ClassObject)
(define-const var3275 Int (var3512_toUpperCase/1913344327 var148)) ; Statement: $c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>(c0) 
(declare-const var1738!2 var2537)
(assert (not (= var1738!2 null-var2537)))
(assert (= (characterValueTrue/1098249142 var1738!2) var3275)) ; Statement: r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: char characterValueTrue> = $c1 
(define-const var320 Int (var3512_toUpperCase/1913344327 var812)) ; Statement: $c3 = staticinvoke <java.lang.Character: char toUpperCase(char)>(c2) 
(declare-const var1738!3 var2537)
(assert (not (= var1738!3 null-var2537)))
(assert (= (characterValueFalse/1098249142 var1738!3) var320)) ; Statement: r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: char characterValueFalse> = $c3 
(define-const var950 Int (var3512_toLowerCase/1461689736 var148)) ; Statement: $c4 = staticinvoke <java.lang.Character: char toLowerCase(char)>(c0) 
(declare-const var1738!4 var2537)
(assert (not (= var1738!4 null-var2537)))
(assert (= (characterValueTrueLC/1098249142 var1738!4) var950)) ; Statement: r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: char characterValueTrueLC> = $c4 
(define-const var2901 String (String_valueOf/-371898945 var148)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(declare-const var1738!5 var2537)
(assert (not (= var1738!5 null-var2537)))
(assert (= (stringValueTrue/1098249142 var1738!5) var2901)) ; Statement: r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: java.lang.String stringValueTrue> = $r1 
(define-const var2577 String (String_valueOf/-371898945 var812)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c2) 
(declare-const var1738!6 var2537)
(assert (not (= var1738!6 null-var2537)))
(assert (= (stringValueFalse/1098249142 var1738!6) var2577)) ; Statement: r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: java.lang.String stringValueFalse> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1407494593=([org.hibernate.type.descriptor.java.AbstractTypeDescriptor, java.lang.Class], void), cast-from-var2537-to-var465=([org.hibernate.type.descriptor.java.BooleanTypeDescriptor], org.hibernate.type.descriptor.java.AbstractTypeDescriptor), var3512_toUpperCase/1913344327=([char], char), characterValueTrue/1098249142=([org.hibernate.type.descriptor.java.BooleanTypeDescriptor], char), characterValueFalse/1098249142=([org.hibernate.type.descriptor.java.BooleanTypeDescriptor], char), var3512_toLowerCase/1461689736=([char], char), characterValueTrueLC/1098249142=([org.hibernate.type.descriptor.java.BooleanTypeDescriptor], char), String_valueOf/-371898945=([char], java.lang.String), stringValueTrue/1098249142=([org.hibernate.type.descriptor.java.BooleanTypeDescriptor], java.lang.String), stringValueFalse/1098249142=([org.hibernate.type.descriptor.java.BooleanTypeDescriptor], java.lang.String)}
; {var2537=org.hibernate.type.descriptor.java.BooleanTypeDescriptor, var1738=r0, var148=c0, var812=c2, var2557=java.lang.Boolean, var465=org.hibernate.type.descriptor.java.AbstractTypeDescriptor, var981=class "Ljava/lang/Boolean;", var3512=java.lang.Character, var3275=$c1, var320=$c3, var950=$c4, var2901=$r1, var2577=$r2}
; {org.hibernate.type.descriptor.java.BooleanTypeDescriptor=var2537, r0=var1738, c0=var148, c2=var812, java.lang.Boolean=var2557, org.hibernate.type.descriptor.java.AbstractTypeDescriptor=var465, class "Ljava/lang/Boolean;"=var981, java.lang.Character=var3512, $c1=var3275, $c3=var320, $c4=var950, $r1=var2901, $r2=var2577}
;seq <java.lang.String: java.lang.String valueOf(char)>;	<java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 2}
;stmts r0 := @this: org.hibernate.type.descriptor.java.BooleanTypeDescriptor;	c0 := @parameter0: char;	c2 := @parameter1: char;	specialinvoke r0.<org.hibernate.type.descriptor.java.AbstractTypeDescriptor: void <init>(java.lang.Class)>(class "Ljava/lang/Boolean;");	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>(c0);	r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: char characterValueTrue> = $c1;	$c3 = staticinvoke <java.lang.Character: char toUpperCase(char)>(c2);	r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: char characterValueFalse> = $c3;	$c4 = staticinvoke <java.lang.Character: char toLowerCase(char)>(c0);	r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: char characterValueTrueLC> = $c4;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: java.lang.String stringValueTrue> = $r1;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c2);	r0.<org.hibernate.type.descriptor.java.BooleanTypeDescriptor: java.lang.String stringValueFalse> = $r2;	return
;block_num 1