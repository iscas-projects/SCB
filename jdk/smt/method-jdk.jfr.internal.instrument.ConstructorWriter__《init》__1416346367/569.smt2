(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2663 0)
(declare-sort var2433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1261334635 (var2433 Int) void)
(declare-fun cast-from-var2663-to-var2433 (var2663) var2433)
(declare-fun useInputParameter/515443650 (var2663) Bool)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun shortClassName/515443650 (var2663) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun fullClassName/515443650 (var2663) String)
(declare-const null-var2663 var2663)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const var2788 var2663) ; Statement: r0 := @this: jdk.jfr.internal.instrument.ConstructorWriter 
(assert (not (= var2788 null-var2663)))
(declare-const var3893 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3893 null-ClassObject)))
(declare-const var2079 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2079 null-Bool)))
(assert true)
;(assert (<init>/-1261334635 (cast-from-var2663-to-var2433 var2788) 327680)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodVisitor: void <init>(int)>(327680) 

(declare-const var2788!1 var2663)
(declare-const var3460 Int)
(declare-const var2788!2 var2663)
(assert (not (= var2788!2 null-var2663)))
(assert (= (useInputParameter/515443650 var2788!2) var2079)) ; Statement: r0.<jdk.jfr.internal.instrument.ConstructorWriter: boolean useInputParameter> = z0 
(assert true)
(define-const var868 String (getSimpleName/-390194377 var3893)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var2788!3 var2663)
(assert (not (= var2788!3 null-var2663)))
(assert (= (shortClassName/515443650 var2788!3) var868)) ; Statement: r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String shortClassName> = $r2 
(assert true)
(define-const var3001 String (getName/-1958580599 var3893)) ; Statement: $r3 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2072 String (replace/1524665721 var3001 46 47)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(declare-const var2788!4 var2663)
(assert (not (= var2788!4 null-var2663)))
(assert (= (fullClassName/515443650 var2788!4) var2072)) ; Statement: r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String fullClassName> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1261334635=([jdk.internal.org.objectweb.asm.MethodVisitor, int], void), cast-from-var2663-to-var2433=([jdk.jfr.internal.instrument.ConstructorWriter], jdk.internal.org.objectweb.asm.MethodVisitor), useInputParameter/515443650=([jdk.jfr.internal.instrument.ConstructorWriter], boolean), getSimpleName/-390194377=([java.lang.Class], java.lang.String), shortClassName/515443650=([jdk.jfr.internal.instrument.ConstructorWriter], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), fullClassName/515443650=([jdk.jfr.internal.instrument.ConstructorWriter], java.lang.String)}
; {var2663=jdk.jfr.internal.instrument.ConstructorWriter, var2788=r0, var3893=r1, var2079=z0, var2433=jdk.internal.org.objectweb.asm.MethodVisitor, var3460=327680, var868=$r2, var3001=$r3, var2072=$r4}
; {jdk.jfr.internal.instrument.ConstructorWriter=var2663, r0=var2788, r1=var3893, z0=var2079, jdk.internal.org.objectweb.asm.MethodVisitor=var2433, 327680=var3460, $r2=var868, $r3=var3001, $r4=var2072}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: jdk.jfr.internal.instrument.ConstructorWriter;	r1 := @parameter0: java.lang.Class;	z0 := @parameter1: boolean;	specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodVisitor: void <init>(int)>(327680);	r0.<jdk.jfr.internal.instrument.ConstructorWriter: boolean useInputParameter> = z0;	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getSimpleName()>();	r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String shortClassName> = $r2;	$r3 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String fullClassName> = $r4;	return
;block_num 1