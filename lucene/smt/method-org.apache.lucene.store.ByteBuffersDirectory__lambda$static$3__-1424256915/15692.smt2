(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1350 0)
(declare-sort var3862 0)
(declare-sort var2216 0)
(declare-sort var1309 0)
(declare-sort var1580 0)
(declare-sort var416 0)
(declare-sort var2795 0)
(declare-sort var3346 0)
(declare-sort var2791 0)
(declare-sort var2489 0)
(declare-sort var3309 0)
(declare-sort var3438 0)
(declare-sort var1618 0)
(declare-sort var2458 0)
(declare-sort var2076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3309!class ClassObject)
(declare-fun toBufferList/990497982 (var3862) var2216)
(declare-fun var1309_allocate/-517473021 (Int) var1309)
(declare-fun order/1698056697 (var1309 var1580) var1309)
(declare-fun var416_add/328494887 (var416 var2795) Bool)
(declare-fun cast-from-var2216-to-var416 (var2216) var416)
(declare-fun cast-from-var1309-to-var2795 (var1309) var2795)
(declare-fun var3346_determineBlockPage/-1731856665 (var416) Int)
(declare-fun var2791_nextHighestPowerOfTwo/1881809713 (Int) Int)
(declare-fun Int_numberOfTrailingZeros/-1922392986 (Int) Int)
(declare-fun arr-var2795-init () (Array Int var2795))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var2795 (String) var2795)
(declare-fun String_format/-647569892 (var2489 String (Array Int var2795)) String)
(declare-fun var3438-init () var3438)
(declare-fun var2458_bootstrap$/1685784820 () var1618)
(declare-fun <init>/230545608 (var3438 String var1618) void)
(declare-fun var416_size/-959786421 (var416) Int)
(declare-fun arr-var1309-init () (Array Int var1309))
(declare-fun var416_toArray/-775711681 (var416 (Array Int var2795)) (Array Int var2795))
(declare-fun cast-from-__Array__Int__var1309__-to-__Array__Int__var2795__ ((Array Int var1309)) (Array Int var2795))
(declare-fun cast-from-__Array__Int__var2795__-to-__Array__Int__var1309__ ((Array Int var2795)) (Array Int var1309))
(declare-fun size/1247686229 (var3862) Int)
(declare-fun var2076_newInstance/-2109164230 (String (Array Int var1309) Int Int var3438) var2076)
(declare-const null-String String)
(declare-const null-var3862 var3862)
(declare-const var1580-LITTLE_ENDIAN var1580)
(declare-const var2489-ROOT var2489)
(declare-const null-__Array__Int__var2795__ (Array Int var2795))
(declare-const var953 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var953 null-String)))
(declare-const var643 var3862) ; Statement: r0 := @parameter1: org.apache.lucene.store.ByteBuffersDataOutput 
(assert (not (= var643 null-var3862)))
(assert true)
(define-const var988 var2216 (toBufferList/990497982 var643)) ; Statement: r1 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: java.util.ArrayList toBufferList()>() 
(define-const var1614 var1309 (var1309_allocate/-517473021 0)) ; Statement: $r3 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>(0) 
(define-const var214 var1580 var1580-LITTLE_ENDIAN) ; Statement: $r2 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN> 
(assert true)
(define-const var394 var1309 (order/1698056697 var1614 var214)) ; Statement: $r4 = virtualinvoke $r3.<java.nio.ByteBuffer: java.nio.ByteBuffer order(java.nio.ByteOrder)>($r2) 
;(assert (var416_add/328494887 (cast-from-var2216-to-var416 var988) (cast-from-var1309-to-var2795 var394))) ; Statement: interfaceinvoke r1.<java.util.List: boolean add(java.lang.Object)>($r4) 

(declare-const var988!1 var2216)
(declare-const var394!1 var1309)
(define-const var1669 Int (var3346_determineBlockPage/-1731856665 (cast-from-var2216-to-var416 var988!1))) ; Statement: i0 = staticinvoke <org.apache.lucene.store.ByteBuffersDataInput: int determineBlockPage(java.util.List)>(r1) 
 ; Statement: if i0 != 0 goto $i1 = staticinvoke <org.apache.lucene.util.BitUtil: int nextHighestPowerOfTwo(int)>(i0) 
(assert (not (= var1669 0))) ; Cond: i0 != 0 
(define-const var3120 Int (var2791_nextHighestPowerOfTwo/1881809713 var1669)) ; Statement: $i1 = staticinvoke <org.apache.lucene.util.BitUtil: int nextHighestPowerOfTwo(int)>(i0) 
(define-const var3534 Int (Int_numberOfTrailingZeros/-1922392986 var3120)) ; Statement: i4 = staticinvoke <java.lang.Integer: int numberOfTrailingZeros(int)>($i1) 
(assert true) ; Non Conditional
(define-const var3859 var2489 var2489-ROOT) ; Statement: $r7 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2965 (Array Int var2795) arr-var2795-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(define-const var459 ClassObject var3309!class) ; Statement: $r6 = class "Lorg/apache/lucene/store/ByteBuffersDirectory;" 
(assert true)
(define-const var884 String (getSimpleName/-390194377 var459)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var2965!1 (Array Int var2795))
(assert (not (= var2965!1 null-__Array__Int__var2795__)))
(assert (= (select var2965!1 0) (cast-from-String-to-var2795 var884))) ; Statement: $r5[0] = $r8 
(declare-const var2965!2 (Array Int var2795))
(assert (not (= var2965!2 null-__Array__Int__var2795__)))
(assert (= (select var2965!2 1) (cast-from-String-to-var2795 var953))) ; Statement: $r5[1] = r9 
(define-const var1998 String (String_format/-647569892 var3859 "%s (file=%s)" var2965!2)) ; Statement: $r16 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "%s (file=%s)", $r5) 
(define-const var2823 var3438 var3438-init) ; Statement: $r10 = new org.apache.lucene.store.ByteBufferGuard 
(define-const var2741 var1618 var2458_bootstrap$/1685784820) ; Statement: $r11 = staticinvoke <org.apache.lucene.store.ByteBuffersDirectory$lambda_static_2__395: org.apache.lucene.store.ByteBufferGuard$BufferCleaner bootstrap$()>() 
(assert true)
;(assert (<init>/230545608 var2823 "none" var2741)) ; Statement: specialinvoke $r10.<org.apache.lucene.store.ByteBufferGuard: void <init>(java.lang.String,org.apache.lucene.store.ByteBufferGuard$BufferCleaner)>("none", $r11) 

(declare-const var2823!1 var3438)
(declare-const var761 String)
(declare-const var2741!1 var1618)
(define-const var341 Int (var416_size/-959786421 (cast-from-var2216-to-var416 var988!1))) ; Statement: $i2 = interfaceinvoke r1.<java.util.List: int size()>() 
(define-const var437 (Array Int var1309) arr-var1309-init) ; Statement: $r12 = newarray (java.nio.ByteBuffer)[$i2] 
(define-const var1193 (Array Int var2795) (var416_toArray/-775711681 (cast-from-var2216-to-var416 var988!1) (cast-from-__Array__Int__var1309__-to-__Array__Int__var2795__ var437))) ; Statement: $r13 = interfaceinvoke r1.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r12) 
(define-const var3207 (Array Int var1309) (cast-from-__Array__Int__var2795__-to-__Array__Int__var1309__ var1193)) ; Statement: $r14 = (java.nio.ByteBuffer[]) $r13 
(assert true)
(define-const var1422 Int (size/1247686229 var643)) ; Statement: $l3 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: long size()>() 
(define-const var1460 var2076 (var2076_newInstance/-2109164230 var1998 var3207 var1422 var3534 var2823!1)) ; Statement: $r15 = staticinvoke <org.apache.lucene.store.ByteBufferIndexInput: org.apache.lucene.store.ByteBufferIndexInput newInstance(java.lang.String,java.nio.ByteBuffer[],long,int,org.apache.lucene.store.ByteBufferGuard)>($r16, $r14, $l3, i4, $r10) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {toBufferList/990497982=([org.apache.lucene.store.ByteBuffersDataOutput], java.util.ArrayList), var1309_allocate/-517473021=([int], java.nio.ByteBuffer), order/1698056697=([java.nio.ByteBuffer, java.nio.ByteOrder], java.nio.ByteBuffer), var416_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2216-to-var416=([java.util.ArrayList], java.util.List), cast-from-var1309-to-var2795=([java.nio.ByteBuffer], java.lang.Object), var3346_determineBlockPage/-1731856665=([java.util.List], int), var2791_nextHighestPowerOfTwo/1881809713=([int], int), Int_numberOfTrailingZeros/-1922392986=([int], int), arr-var2795-init=([], java.lang.Object[]), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var2795=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var3438-init=([], org.apache.lucene.store.ByteBufferGuard), var2458_bootstrap$/1685784820=([], org.apache.lucene.store.ByteBufferGuard$BufferCleaner), <init>/230545608=([org.apache.lucene.store.ByteBufferGuard, java.lang.String, org.apache.lucene.store.ByteBufferGuard$BufferCleaner], void), var416_size/-959786421=([java.util.List], int), arr-var1309-init=([], java.nio.ByteBuffer[]), var416_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__var1309__-to-__Array__Int__var2795__=([java.nio.ByteBuffer[]], java.lang.Object[]), cast-from-__Array__Int__var2795__-to-__Array__Int__var1309__=([java.lang.Object[]], java.nio.ByteBuffer[]), size/1247686229=([org.apache.lucene.store.ByteBuffersDataOutput], long), var2076_newInstance/-2109164230=([java.lang.String, java.nio.ByteBuffer[], long, int, org.apache.lucene.store.ByteBufferGuard], org.apache.lucene.store.ByteBufferIndexInput)}
; {var953=r9, var1350=null_type, var3862=org.apache.lucene.store.ByteBuffersDataOutput, var643=r0, var2216=java.util.ArrayList, var988=r1, var1309=java.nio.ByteBuffer, var1614=$r3, var1580=java.nio.ByteOrder, var214=$r2, var394=$r4, var416=java.util.List, var2795=java.lang.Object, var3346=org.apache.lucene.store.ByteBuffersDataInput, var1669=i0, var2791=org.apache.lucene.util.BitUtil, var3120=$i1, var3534=i4, var2489=java.util.Locale, var3859=$r7, var2965=$r5, var3309=org.apache.lucene.store.ByteBuffersDirectory, var459=$r6, var884=$r8, var1998=$r16, var3438=org.apache.lucene.store.ByteBufferGuard, var2823=$r10, var1618=org.apache.lucene.store.ByteBufferGuard$BufferCleaner, var2458=org.apache.lucene.store.ByteBuffersDirectory$lambda_static_2__395, var2741=$r11, var761="none", var341=$i2, var437=$r12, var1193=$r13, var3207=$r14, var1422=$l3, var2076=org.apache.lucene.store.ByteBufferIndexInput, var1460=$r15}
; {r9=var953, null_type=var1350, org.apache.lucene.store.ByteBuffersDataOutput=var3862, r0=var643, java.util.ArrayList=var2216, r1=var988, java.nio.ByteBuffer=var1309, $r3=var1614, java.nio.ByteOrder=var1580, $r2=var214, $r4=var394, java.util.List=var416, java.lang.Object=var2795, org.apache.lucene.store.ByteBuffersDataInput=var3346, i0=var1669, org.apache.lucene.util.BitUtil=var2791, $i1=var3120, i4=var3534, java.util.Locale=var2489, $r7=var3859, $r5=var2965, org.apache.lucene.store.ByteBuffersDirectory=var3309, $r6=var459, $r8=var884, $r16=var1998, org.apache.lucene.store.ByteBufferGuard=var3438, $r10=var2823, org.apache.lucene.store.ByteBufferGuard$BufferCleaner=var1618, org.apache.lucene.store.ByteBuffersDirectory$lambda_static_2__395=var2458, $r11=var2741, "none"=var761, $i2=var341, $r12=var437, $r13=var1193, $r14=var3207, $l3=var1422, org.apache.lucene.store.ByteBufferIndexInput=var2076, $r15=var1460}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r9 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.lucene.store.ByteBuffersDataOutput;	r1 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: java.util.ArrayList toBufferList()>();	$r3 = staticinvoke <java.nio.ByteBuffer: java.nio.ByteBuffer allocate(int)>(0);	$r2 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN>;	$r4 = virtualinvoke $r3.<java.nio.ByteBuffer: java.nio.ByteBuffer order(java.nio.ByteOrder)>($r2);	interfaceinvoke r1.<java.util.List: boolean add(java.lang.Object)>($r4);	i0 = staticinvoke <org.apache.lucene.store.ByteBuffersDataInput: int determineBlockPage(java.util.List)>(r1);	if i0 != 0 goto $i1 = staticinvoke <org.apache.lucene.util.BitUtil: int nextHighestPowerOfTwo(int)>(i0);	$i1 = staticinvoke <org.apache.lucene.util.BitUtil: int nextHighestPowerOfTwo(int)>(i0);	i4 = staticinvoke <java.lang.Integer: int numberOfTrailingZeros(int)>($i1);	$r7 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = newarray (java.lang.Object)[2];	$r6 = class "Lorg/apache/lucene/store/ByteBuffersDirectory;";	$r8 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>();	$r5[0] = $r8;	$r5[1] = r9;	$r16 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "%s (file=%s)", $r5);	$r10 = new org.apache.lucene.store.ByteBufferGuard;	$r11 = staticinvoke <org.apache.lucene.store.ByteBuffersDirectory$lambda_static_2__395: org.apache.lucene.store.ByteBufferGuard$BufferCleaner bootstrap$()>();	specialinvoke $r10.<org.apache.lucene.store.ByteBufferGuard: void <init>(java.lang.String,org.apache.lucene.store.ByteBufferGuard$BufferCleaner)>("none", $r11);	$i2 = interfaceinvoke r1.<java.util.List: int size()>();	$r12 = newarray (java.nio.ByteBuffer)[$i2];	$r13 = interfaceinvoke r1.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r12);	$r14 = (java.nio.ByteBuffer[]) $r13;	$l3 = virtualinvoke r0.<org.apache.lucene.store.ByteBuffersDataOutput: long size()>();	$r15 = staticinvoke <org.apache.lucene.store.ByteBufferIndexInput: org.apache.lucene.store.ByteBufferIndexInput newInstance(java.lang.String,java.nio.ByteBuffer[],long,int,org.apache.lucene.store.ByteBufferGuard)>($r16, $r14, $l3, i4, $r10);	return $r15
;block_num 3