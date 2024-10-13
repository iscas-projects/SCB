(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3266 0)
(declare-sort var746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mv/-1017828445 (var746) var746)
(declare-fun cast-from-var3266-to-var746 (var3266) var746)
(declare-fun visitVarInsn/-823838430 (var746 Int Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun shortClassName/515443650 (var3266) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fullClassName/515443650 (var3266) String)
(declare-fun visitMethodInsn/724849146 (var746 Int String String String) void)
(declare-const null-var3266 var3266)
(declare-const var1011 var3266) ; Statement: r0 := @this: jdk.jfr.internal.instrument.ConstructorWriter 
(assert (not (= var1011 null-var3266)))
(define-const var2697 var746 (mv/-1017828445 (cast-from-var3266-to-var746 var1011))) ; Statement: $r1 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv> 
(assert true)
;(assert (visitVarInsn/-823838430 var2697 25 0)) ; Statement: virtualinvoke $r1.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2697!1 var746)
(declare-const var3074 Int)
(declare-const var1511 Int)
(define-const var89 var746 (mv/-1017828445 (cast-from-var3266-to-var746 var1011))) ; Statement: $r2 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv> 
(assert true)
;(assert (visitVarInsn/-823838430 var89 25 1)) ; Statement: virtualinvoke $r2.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 1) 

(declare-const var89!1 var746)
(declare-const var3074!1 Int)
(declare-const var1504 Int)
(define-const var2223 var746 (mv/-1017828445 (cast-from-var3266-to-var746 var1011))) ; Statement: $r4 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv> 
(define-const var3960 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3960)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3960!1 String)
(assert (= var3960!1 ""))
(assert true)
(define-const var593 String (append/672562846 var3960!1 "trace")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("trace") 
(declare-const var3960!2 String)
(assert (= var3960!2 (str.++ var3960!1 "trace")))
(define-const var3362 String (shortClassName/515443650 var1011)) ; Statement: $r5 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String shortClassName> 
(assert true)
(define-const var1982 String (append/672562846 var593 var3362)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var593!1 String)
(assert (= var593!1 (str.++ var593 var3362)))
(assert true)
(define-const var2426 String (toString/-2075883882 var1982)) ; Statement: $r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1313 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1313)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1313!1 String)
(assert (= var1313!1 ""))
(assert true)
(define-const var3496 String (append/672562846 var1313!1 "(L")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(L") 
(declare-const var1313!2 String)
(assert (= var1313!2 (str.++ var1313!1 "(L")))
(define-const var193 String (fullClassName/515443650 var1011)) ; Statement: $r9 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String fullClassName> 
(assert true)
(define-const var985 String (append/672562846 var3496 var193)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3496!1 String)
(assert (= var3496!1 (str.++ var3496 var193)))
(assert true)
(define-const var3622 String (append/672562846 var985 ";Ljava/lang/String;)V")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";Ljava/lang/String;)V") 
(declare-const var985!1 String)
(assert (= var985!1 (str.++ var985 ";Ljava/lang/String;)V")))
(assert true)
(define-const var974 String (toString/-2075883882 var3622)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/724849146 var2223 184 "jdk/jfr/internal/instrument/ThrowableTracer" var2426 var974)) ; Statement: virtualinvoke $r4.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String)>(184, "jdk/jfr/internal/instrument/ThrowableTracer", $r14, $r13) 

(declare-const var2223!1 var746)
(declare-const var537 Int)
(declare-const var2634 String)
(declare-const var2426!1 String)
(declare-const var974!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mv/-1017828445=([jdk.internal.org.objectweb.asm.MethodVisitor], jdk.internal.org.objectweb.asm.MethodVisitor), cast-from-var3266-to-var746=([jdk.jfr.internal.instrument.ConstructorWriter], jdk.internal.org.objectweb.asm.MethodVisitor), visitVarInsn/-823838430=([jdk.internal.org.objectweb.asm.MethodVisitor, int, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), shortClassName/515443650=([jdk.jfr.internal.instrument.ConstructorWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fullClassName/515443650=([jdk.jfr.internal.instrument.ConstructorWriter], java.lang.String), visitMethodInsn/724849146=([jdk.internal.org.objectweb.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String], void)}
; {var3266=jdk.jfr.internal.instrument.ConstructorWriter, var1011=r0, var746=jdk.internal.org.objectweb.asm.MethodVisitor, var2697=$r1, var3074=25, var1511=0, var89=$r2, var1504=1, var2223=$r4, var3960=$r3, var593=$r6, var3362=$r5, var1982=$r7, var2426=$r14, var1313=$r8, var3496=$r10, var193=$r9, var985=$r11, var3622=$r12, var974=$r13, var537=184, var2634="jdk/jfr/internal/instrument/ThrowableTracer"}
; {jdk.jfr.internal.instrument.ConstructorWriter=var3266, r0=var1011, jdk.internal.org.objectweb.asm.MethodVisitor=var746, $r1=var2697, 25=var3074, 0=var1511, $r2=var89, 1=var1504, $r4=var2223, $r3=var3960, $r6=var593, $r5=var3362, $r7=var1982, $r14=var2426, $r8=var1313, $r10=var3496, $r9=var193, $r11=var985, $r12=var3622, $r13=var974, 184=var537, "jdk/jfr/internal/instrument/ThrowableTracer"=var2634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: jdk.jfr.internal.instrument.ConstructorWriter;	$r1 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;	virtualinvoke $r1.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r2 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;	virtualinvoke $r2.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 1);	$r4 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("trace");	$r5 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String shortClassName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(L");	$r9 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String fullClassName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";Ljava/lang/String;)V");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String)>(184, "jdk/jfr/internal/instrument/ThrowableTracer", $r14, $r13);	return
;block_num 1