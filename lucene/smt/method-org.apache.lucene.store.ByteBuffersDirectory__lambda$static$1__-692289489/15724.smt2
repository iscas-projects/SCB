(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1638 0)
(declare-sort var71 0)
(declare-sort var55 0)
(declare-sort var2940 0)
(declare-sort var1237 0)
(declare-sort var1460 0)
(declare-sort var3842 0)
(declare-sort var78 0)
(declare-sort var608 0)
(declare-sort var2360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2360!class ClassObject)
(declare-fun var55-init () var55)
(declare-fun arr-var2940-init () (Array Int var2940))
(declare-fun toArrayCopy/-131631581 (var71) (Array Int Int))
(declare-fun var2940_wrap/1654484403 ((Array Int Int)) var2940)
(declare-fun order/1698056697 (var2940 var1237) var2940)
(declare-fun var3842_asList/1779083644 ((Array Int var78)) var1460)
(declare-fun cast-from-__Array__Int__var2940__-to-__Array__Int__var78__ ((Array Int var2940)) (Array Int var78))
(declare-fun <init>/597901399 (var55 var1460) void)
(declare-fun arr-var78-init () (Array Int var78))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var78 (String) var78)
(declare-fun toString/607077136 (var55) String)
(declare-fun String_format/-647569892 (var608 String (Array Int var78)) String)
(declare-fun var2360-init () var2360)
(declare-fun <init>/1801021658 (var2360 var55 String) void)
(declare-const null-String String)
(declare-const null-var71 var71)
(declare-const var1237-LITTLE_ENDIAN var1237)
(declare-const null-__Array__Int__var2940__ (Array Int var2940))
(declare-const var608-ROOT var608)
(declare-const null-__Array__Int__var78__ (Array Int var78))
(declare-const var894 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var894 null-String)))
(declare-const var140 var71) ; Statement: r2 := @parameter1: org.apache.lucene.store.ByteBuffersDataOutput 
(assert (not (= var140 null-var71)))
(define-const var788 var55 var55-init) ; Statement: $r0 = new org.apache.lucene.store.ByteBuffersDataInput 
(define-const var3547 (Array Int var2940) arr-var2940-init) ; Statement: $r1 = newarray (java.nio.ByteBuffer)[1] 
(assert true)
(define-const var3309 (Array Int Int) (toArrayCopy/-131631581 var140)) ; Statement: $r3 = virtualinvoke r2.<org.apache.lucene.store.ByteBuffersDataOutput: byte[] toArrayCopy()>() 
(define-const var3991 var2940 (var2940_wrap/1654484403 var3309)) ; Statement: $r5 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>($r3) 
(define-const var439 var1237 var1237-LITTLE_ENDIAN) ; Statement: $r4 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN> 
(assert true)
(define-const var3105 var2940 (order/1698056697 var3991 var439)) ; Statement: $r6 = virtualinvoke $r5.<java.nio.ByteBuffer: java.nio.ByteBuffer order(java.nio.ByteOrder)>($r4) 
(declare-const var3547!1 (Array Int var2940))
(assert (not (= var3547!1 null-__Array__Int__var2940__)))
(assert (= (select var3547!1 0) var3105)) ; Statement: $r1[0] = $r6 
(define-const var3187 var1460 (var3842_asList/1779083644 (cast-from-__Array__Int__var2940__-to-__Array__Int__var78__ var3547!1))) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r1) 
(assert true)
;(assert (<init>/597901399 var788 var3187)) ; Statement: specialinvoke $r0.<org.apache.lucene.store.ByteBuffersDataInput: void <init>(java.util.List)>($r7) 

(declare-const var788!1 var55)
(declare-const var3187!1 var1460)
(define-const var1752 var608 var608-ROOT) ; Statement: $r10 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1799 (Array Int var78) arr-var78-init) ; Statement: $r8 = newarray (java.lang.Object)[3] 
(define-const var253 ClassObject var2360!class) ; Statement: $r9 = class "Lorg/apache/lucene/store/ByteBuffersIndexInput;" 
(assert true)
(define-const var738 String (getSimpleName/-390194377 var253)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var1799!1 (Array Int var78))
(assert (not (= var1799!1 null-__Array__Int__var78__)))
(assert (= (select var1799!1 0) (cast-from-String-to-var78 var738))) ; Statement: $r8[0] = $r11 
(declare-const var1799!2 (Array Int var78))
(assert (not (= var1799!2 null-__Array__Int__var78__)))
(assert (= (select var1799!2 1) (cast-from-String-to-var78 var894))) ; Statement: $r8[1] = r12 
(assert true)
(define-const var68 String (toString/607077136 var788!1)) ; Statement: $r13 = virtualinvoke $r0.<org.apache.lucene.store.ByteBuffersDataInput: java.lang.String toString()>() 
(declare-const var1799!3 (Array Int var78))
(assert (not (= var1799!3 null-__Array__Int__var78__)))
(assert (= (select var1799!3 2) (cast-from-String-to-var78 var68))) ; Statement: $r8[2] = $r13 
(define-const var1644 String (String_format/-647569892 var1752 "%s (file=%s, buffers=%s)" var1799!3)) ; Statement: r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r10, "%s (file=%s, buffers=%s)", $r8) 
(define-const var1857 var2360 var2360-init) ; Statement: $r15 = new org.apache.lucene.store.ByteBuffersIndexInput 
(assert true)
;(assert (<init>/1801021658 var1857 var788!1 var1644)) ; Statement: specialinvoke $r15.<org.apache.lucene.store.ByteBuffersIndexInput: void <init>(org.apache.lucene.store.ByteBuffersDataInput,java.lang.String)>($r0, r14) 

(declare-const var1857!1 var2360)
(declare-const var788!2 var55)
(declare-const var1644!1 String)
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var55-init=([], org.apache.lucene.store.ByteBuffersDataInput), arr-var2940-init=([], java.nio.ByteBuffer[]), toArrayCopy/-131631581=([org.apache.lucene.store.ByteBuffersDataOutput], byte[]), var2940_wrap/1654484403=([byte[]], java.nio.ByteBuffer), order/1698056697=([java.nio.ByteBuffer, java.nio.ByteOrder], java.nio.ByteBuffer), var3842_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var2940__-to-__Array__Int__var78__=([java.nio.ByteBuffer[]], java.lang.Object[]), <init>/597901399=([org.apache.lucene.store.ByteBuffersDataInput, java.util.List], void), arr-var78-init=([], java.lang.Object[]), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var78=([java.lang.String], java.lang.Object), toString/607077136=([org.apache.lucene.store.ByteBuffersDataInput], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var2360-init=([], org.apache.lucene.store.ByteBuffersIndexInput), <init>/1801021658=([org.apache.lucene.store.ByteBuffersIndexInput, org.apache.lucene.store.ByteBuffersDataInput, java.lang.String], void)}
; {var894=r12, var1638=null_type, var71=org.apache.lucene.store.ByteBuffersDataOutput, var140=r2, var55=org.apache.lucene.store.ByteBuffersDataInput, var788=$r0, var2940=java.nio.ByteBuffer, var3547=$r1, var3309=$r3, var3991=$r5, var1237=java.nio.ByteOrder, var439=$r4, var3105=$r6, var1460=java.util.List, var3842=java.util.Arrays, var78=java.lang.Object, var3187=$r7, var608=java.util.Locale, var1752=$r10, var1799=$r8, var2360=org.apache.lucene.store.ByteBuffersIndexInput, var253=$r9, var738=$r11, var68=$r13, var1644=r14, var1857=$r15}
; {r12=var894, null_type=var1638, org.apache.lucene.store.ByteBuffersDataOutput=var71, r2=var140, org.apache.lucene.store.ByteBuffersDataInput=var55, $r0=var788, java.nio.ByteBuffer=var2940, $r1=var3547, $r3=var3309, $r5=var3991, java.nio.ByteOrder=var1237, $r4=var439, $r6=var3105, java.util.List=var1460, java.util.Arrays=var3842, java.lang.Object=var78, $r7=var3187, java.util.Locale=var608, $r10=var1752, $r8=var1799, org.apache.lucene.store.ByteBuffersIndexInput=var2360, $r9=var253, $r11=var738, $r13=var68, r14=var1644, $r15=var1857}
;seq <org.apache.lucene.store.ByteBuffersDataInput: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r12 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.lucene.store.ByteBuffersDataOutput;	$r0 = new org.apache.lucene.store.ByteBuffersDataInput;	$r1 = newarray (java.nio.ByteBuffer)[1];	$r3 = virtualinvoke r2.<org.apache.lucene.store.ByteBuffersDataOutput: byte[] toArrayCopy()>();	$r5 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer wrap(byte[])>($r3);	$r4 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN>;	$r6 = virtualinvoke $r5.<java.nio.ByteBuffer: java.nio.ByteBuffer order(java.nio.ByteOrder)>($r4);	$r1[0] = $r6;	$r7 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r1);	specialinvoke $r0.<org.apache.lucene.store.ByteBuffersDataInput: void <init>(java.util.List)>($r7);	$r10 = <java.util.Locale: java.util.Locale ROOT>;	$r8 = newarray (java.lang.Object)[3];	$r9 = class "Lorg/apache/lucene/store/ByteBuffersIndexInput;";	$r11 = virtualinvoke $r9.<java.lang.Class: java.lang.String getSimpleName()>();	$r8[0] = $r11;	$r8[1] = r12;	$r13 = virtualinvoke $r0.<org.apache.lucene.store.ByteBuffersDataInput: java.lang.String toString()>();	$r8[2] = $r13;	r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r10, "%s (file=%s, buffers=%s)", $r8);	$r15 = new org.apache.lucene.store.ByteBuffersIndexInput;	specialinvoke $r15.<org.apache.lucene.store.ByteBuffersIndexInput: void <init>(org.apache.lucene.store.ByteBuffersDataInput,java.lang.String)>($r0, r14);	return $r15
;block_num 1