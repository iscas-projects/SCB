(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2888 0)
(declare-sort var1194 0)
(declare-sort var2568 0)
(declare-sort var890 0)
(declare-sort var3812 0)
(declare-sort var100 0)
(declare-sort var3142 0)
(declare-sort var2719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var890) void)
(declare-fun cast-from-var2888-to-var890 (var2888) var890)
(declare-fun var3812-init () var3812)
(declare-fun <init>/-2107846739 (var3812) void)
(declare-fun annos/1159652470 (var2888) var3812)
(declare-fun var100-init () var100)
(declare-fun <init>/-325640736 (var100) void)
(declare-fun cast-from-var100-to-var3142 (var100) var3142)
(declare-fun fields/1159652470 (var2888) var3142)
(declare-fun remove/1159652470 (var2888) Bool)
(declare-fun var2719_requireNonNull/-961817614 (var890) var890)
(declare-fun cast-from-String-to-var890 (String) var890)
(declare-fun var2888_isValidJavaIdentifier/420573885 (String) Bool)
(declare-fun constantPool/1159652470 (var2888) Bool)
(declare-fun superType/1159652470 (var2888) String)
(declare-fun name/1159652470 (var2888) String)
(declare-fun id/1159652470 (var2888) Int)
(declare-fun simpleType/1159652470 (var2888) var2568)
(declare-const null-var2888 var2888)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2568 var2568)
(declare-const var2328 var2888) ; Statement: r0 := @this: jdk.jfr.internal.Type 
(assert (not (= var2328 null-var2888)))
(declare-const var1670 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1670 null-String)))
(declare-const var1506 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1506 null-String)))
(declare-const var254 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var254 null-Int)))
(declare-const var2997 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2997 null-Bool)))
(declare-const var3632 var2568) ; Statement: r5 := @parameter4: java.lang.Boolean 
(assert (not (= var3632 null-var2568)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2888-to-var890 var2328))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2328!1 var2888)
(define-const var2679 var3812 var3812-init) ; Statement: $r1 = new jdk.jfr.internal.AnnotationConstruct 
(assert true)
;(assert (<init>/-2107846739 var2679)) ; Statement: specialinvoke $r1.<jdk.jfr.internal.AnnotationConstruct: void <init>()>() 

(declare-const var2679!1 var3812)
(declare-const var2328!2 var2888)
(assert (not (= var2328!2 null-var2888)))
(assert (= (annos/1159652470 var2328!2) var2679!1)) ; Statement: r0.<jdk.jfr.internal.Type: jdk.jfr.internal.AnnotationConstruct annos> = $r1 
(define-const var3608 var100 var100-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3608)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var3608!1 var100)
(declare-const var2328!3 var2888)
(assert (not (= var2328!3 null-var2888)))
(assert (= (fields/1159652470 var2328!3) (cast-from-var100-to-var3142 var3608!1))) ; Statement: r0.<jdk.jfr.internal.Type: java.util.List fields> = $r2 
(declare-const var2328!4 var2888)
(assert (not (= var2328!4 null-var2888)))
(assert (= (remove/1159652470 var2328!4) (ite (= 1 1) true false))) ; Statement: r0.<jdk.jfr.internal.Type: boolean remove> = 1 
;(assert (var2719_requireNonNull/-961817614 (cast-from-String-to-var890 var1670))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r3) 

(declare-const var1670!1 String)
(define-const var3648 Bool (var2888_isValidJavaIdentifier/420573885 var1670!1)) ; Statement: $z0 = staticinvoke <jdk.jfr.internal.Type: boolean isValidJavaIdentifier(java.lang.String)>(r3) 
 ; Statement: if $z0 != 0 goto r0.<jdk.jfr.internal.Type: boolean constantPool> = z1 
(assert (not (= (ite var3648 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2328!5 var2888)
(assert (not (= var2328!5 null-var2888)))
(assert (= (constantPool/1159652470 var2328!5) var2997)) ; Statement: r0.<jdk.jfr.internal.Type: boolean constantPool> = z1 
(declare-const var2328!6 var2888)
(assert (not (= var2328!6 null-var2888)))
(assert (= (superType/1159652470 var2328!6) var1506)) ; Statement: r0.<jdk.jfr.internal.Type: java.lang.String superType> = r4 
(declare-const var2328!7 var2888)
(assert (not (= var2328!7 null-var2888)))
(assert (= (name/1159652470 var2328!7) var1670!1)) ; Statement: r0.<jdk.jfr.internal.Type: java.lang.String name> = r3 
(declare-const var2328!8 var2888)
(assert (not (= var2328!8 null-var2888)))
(assert (= (id/1159652470 var2328!8) var254)) ; Statement: r0.<jdk.jfr.internal.Type: long id> = l0 
(declare-const var2328!9 var2888)
(assert (not (= var2328!9 null-var2888)))
(assert (= (simpleType/1159652470 var2328!9) var3632)) ; Statement: r0.<jdk.jfr.internal.Type: java.lang.Boolean simpleType> = r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2888-to-var890=([jdk.jfr.internal.Type], java.lang.Object), var3812-init=([], jdk.jfr.internal.AnnotationConstruct), <init>/-2107846739=([jdk.jfr.internal.AnnotationConstruct], void), annos/1159652470=([jdk.jfr.internal.Type], jdk.jfr.internal.AnnotationConstruct), var100-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var100-to-var3142=([java.util.ArrayList], java.util.List), fields/1159652470=([jdk.jfr.internal.Type], java.util.List), remove/1159652470=([jdk.jfr.internal.Type], boolean), var2719_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var890=([java.lang.String], java.lang.Object), var2888_isValidJavaIdentifier/420573885=([java.lang.String], boolean), constantPool/1159652470=([jdk.jfr.internal.Type], boolean), superType/1159652470=([jdk.jfr.internal.Type], java.lang.String), name/1159652470=([jdk.jfr.internal.Type], java.lang.String), id/1159652470=([jdk.jfr.internal.Type], long), simpleType/1159652470=([jdk.jfr.internal.Type], java.lang.Boolean)}
; {var2888=jdk.jfr.internal.Type, var2328=r0, var1670=r3, var1194=null_type, var1506=r4, var254=l0, var2997=z1, var2568=java.lang.Boolean, var3632=r5, var890=java.lang.Object, var3812=jdk.jfr.internal.AnnotationConstruct, var2679=$r1, var100=java.util.ArrayList, var3608=$r2, var3142=java.util.List, var2719=java.util.Objects, var3648=$z0}
; {jdk.jfr.internal.Type=var2888, r0=var2328, r3=var1670, null_type=var1194, r4=var1506, l0=var254, z1=var2997, java.lang.Boolean=var2568, r5=var3632, java.lang.Object=var890, jdk.jfr.internal.AnnotationConstruct=var3812, $r1=var2679, java.util.ArrayList=var100, $r2=var3608, java.util.List=var3142, java.util.Objects=var2719, $z0=var3648}
;seq 
;cnt {}
;stmts r0 := @this: jdk.jfr.internal.Type;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	l0 := @parameter2: long;	z1 := @parameter3: boolean;	r5 := @parameter4: java.lang.Boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new jdk.jfr.internal.AnnotationConstruct;	specialinvoke $r1.<jdk.jfr.internal.AnnotationConstruct: void <init>()>();	r0.<jdk.jfr.internal.Type: jdk.jfr.internal.AnnotationConstruct annos> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<jdk.jfr.internal.Type: java.util.List fields> = $r2;	r0.<jdk.jfr.internal.Type: boolean remove> = 1;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r3);	$z0 = staticinvoke <jdk.jfr.internal.Type: boolean isValidJavaIdentifier(java.lang.String)>(r3);	if $z0 != 0 goto r0.<jdk.jfr.internal.Type: boolean constantPool> = z1;	r0.<jdk.jfr.internal.Type: boolean constantPool> = z1;	r0.<jdk.jfr.internal.Type: java.lang.String superType> = r4;	r0.<jdk.jfr.internal.Type: java.lang.String name> = r3;	r0.<jdk.jfr.internal.Type: long id> = l0;	r0.<jdk.jfr.internal.Type: java.lang.Boolean simpleType> = r5;	return
;block_num 2