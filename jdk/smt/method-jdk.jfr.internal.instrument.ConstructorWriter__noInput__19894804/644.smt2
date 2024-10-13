(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var678 0)
(declare-sort var3281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mv/-1017828445 (var3281) var3281)
(declare-fun cast-from-var678-to-var3281 (var678) var3281)
(declare-fun visitVarInsn/-823838430 (var3281 Int Int) void)
(declare-fun visitInsn/-1380969888 (var3281 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun shortClassName/515443650 (var678) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fullClassName/515443650 (var678) String)
(declare-fun visitMethodInsn/724849146 (var3281 Int String String String) void)
(declare-const null-var678 var678)
(declare-const var2461 var678) ; Statement: r0 := @this: jdk.jfr.internal.instrument.ConstructorWriter 
(assert (not (= var2461 null-var678)))
(define-const var3614 var3281 (mv/-1017828445 (cast-from-var678-to-var3281 var2461))) ; Statement: $r1 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv> 
(assert true)
;(assert (visitVarInsn/-823838430 var3614 25 0)) ; Statement: virtualinvoke $r1.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3614!1 var3281)
(declare-const var2601 Int)
(declare-const var3526 Int)
(define-const var2622 var3281 (mv/-1017828445 (cast-from-var678-to-var3281 var2461))) ; Statement: $r2 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv> 
(assert true)
;(assert (visitInsn/-1380969888 var2622 1)) ; Statement: virtualinvoke $r2.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitInsn(int)>(1) 

(declare-const var2622!1 var3281)
(declare-const var3770 Int)
(define-const var597 var3281 (mv/-1017828445 (cast-from-var678-to-var3281 var2461))) ; Statement: $r4 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv> 
(define-const var1091 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1091)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1091!1 String)
(assert (= var1091!1 ""))
(assert true)
(define-const var1997 String (append/672562846 var1091!1 "trace")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("trace") 
(declare-const var1091!2 String)
(assert (= var1091!2 (str.++ var1091!1 "trace")))
(define-const var908 String (shortClassName/515443650 var2461)) ; Statement: $r5 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String shortClassName> 
(assert true)
(define-const var3786 String (append/672562846 var1997 var908)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1997!1 String)
(assert (= var1997!1 (str.++ var1997 var908)))
(assert true)
(define-const var2972 String (toString/-2075883882 var3786)) ; Statement: $r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1031 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1031)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1031!1 String)
(assert (= var1031!1 ""))
(assert true)
(define-const var1218 String (append/672562846 var1031!1 "(L")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(L") 
(declare-const var1031!2 String)
(assert (= var1031!2 (str.++ var1031!1 "(L")))
(define-const var3986 String (fullClassName/515443650 var2461)) ; Statement: $r9 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String fullClassName> 
(assert true)
(define-const var1077 String (append/672562846 var1218 var3986)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1218!1 String)
(assert (= var1218!1 (str.++ var1218 var3986)))
(assert true)
(define-const var591 String (append/672562846 var1077 ";Ljava/lang/String;)V")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";Ljava/lang/String;)V") 
(declare-const var1077!1 String)
(assert (= var1077!1 (str.++ var1077 ";Ljava/lang/String;)V")))
(assert true)
(define-const var516 String (toString/-2075883882 var591)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/724849146 var597 184 "jdk/jfr/internal/instrument/ThrowableTracer" var2972 var516)) ; Statement: virtualinvoke $r4.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String)>(184, "jdk/jfr/internal/instrument/ThrowableTracer", $r14, $r13) 

(declare-const var597!1 var3281)
(declare-const var48 Int)
(declare-const var3413 String)
(declare-const var2972!1 String)
(declare-const var516!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mv/-1017828445=([jdk.internal.org.objectweb.asm.MethodVisitor], jdk.internal.org.objectweb.asm.MethodVisitor), cast-from-var678-to-var3281=([jdk.jfr.internal.instrument.ConstructorWriter], jdk.internal.org.objectweb.asm.MethodVisitor), visitVarInsn/-823838430=([jdk.internal.org.objectweb.asm.MethodVisitor, int, int], void), visitInsn/-1380969888=([jdk.internal.org.objectweb.asm.MethodVisitor, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), shortClassName/515443650=([jdk.jfr.internal.instrument.ConstructorWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fullClassName/515443650=([jdk.jfr.internal.instrument.ConstructorWriter], java.lang.String), visitMethodInsn/724849146=([jdk.internal.org.objectweb.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String], void)}
; {var678=jdk.jfr.internal.instrument.ConstructorWriter, var2461=r0, var3281=jdk.internal.org.objectweb.asm.MethodVisitor, var3614=$r1, var2601=25, var3526=0, var2622=$r2, var3770=1, var597=$r4, var1091=$r3, var1997=$r6, var908=$r5, var3786=$r7, var2972=$r14, var1031=$r8, var1218=$r10, var3986=$r9, var1077=$r11, var591=$r12, var516=$r13, var48=184, var3413="jdk/jfr/internal/instrument/ThrowableTracer"}
; {jdk.jfr.internal.instrument.ConstructorWriter=var678, r0=var2461, jdk.internal.org.objectweb.asm.MethodVisitor=var3281, $r1=var3614, 25=var2601, 0=var3526, $r2=var2622, 1=var3770, $r4=var597, $r3=var1091, $r6=var1997, $r5=var908, $r7=var3786, $r14=var2972, $r8=var1031, $r10=var1218, $r9=var3986, $r11=var1077, $r12=var591, $r13=var516, 184=var48, "jdk/jfr/internal/instrument/ThrowableTracer"=var3413}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: jdk.jfr.internal.instrument.ConstructorWriter;	$r1 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;	virtualinvoke $r1.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r2 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;	virtualinvoke $r2.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitInsn(int)>(1);	$r4 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("trace");	$r5 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String shortClassName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(L");	$r9 = r0.<jdk.jfr.internal.instrument.ConstructorWriter: java.lang.String fullClassName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";Ljava/lang/String;)V");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String)>(184, "jdk/jfr/internal/instrument/ThrowableTracer", $r14, $r13);	return
;block_num 1