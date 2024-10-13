(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var79 0)
(declare-sort var105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var105_maxUTF8Length/180595995 (Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun <init>/-1616928143 (var79 (Array Int Int)) void)
(declare-fun bytes/727234302 (var79) (Array Int Int))
(declare-fun var105_UTF16toUTF8/853935374 (String Int Int (Array Int Int)) Int)
(declare-fun length/727234302 (var79) Int)
(declare-const null-var79 var79)
(declare-const null-String String)
(declare-const var3448 var79) ; Statement: r0 := @this: org.apache.lucene.util.BytesRef 
(assert (not (= var3448 null-var79)))
(declare-const var369 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var369 null-String)))
(define-const var3505 Int (String_length/-667254855 var369)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var185 Int (var105_maxUTF8Length/180595995 var3505)) ; Statement: $i1 = staticinvoke <org.apache.lucene.util.UnicodeUtil: int maxUTF8Length(int)>($i0) 
(define-const var759 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (byte)[$i1] 
(assert true)
;(assert (<init>/-1616928143 var3448 var759)) ; Statement: specialinvoke r0.<org.apache.lucene.util.BytesRef: void <init>(byte[])>($r2) 

(declare-const var3448!1 var79)
(declare-const var759!1 (Array Int Int))
(define-const var3987 Int (String_length/-667254855 var369)) ; Statement: $i2 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var3881 (Array Int Int) (bytes/727234302 var3448!1)) ; Statement: $r3 = r0.<org.apache.lucene.util.BytesRef: byte[] bytes> 
(define-const var3323 Int (var105_UTF16toUTF8/853935374 var369 0 var3987 var3881)) ; Statement: $i3 = staticinvoke <org.apache.lucene.util.UnicodeUtil: int UTF16toUTF8(java.lang.CharSequence,int,int,byte[])>(r1, 0, $i2, $r3) 
(declare-const var3448!2 var79)
(assert (not (= var3448!2 null-var79)))
(assert (= (length/727234302 var3448!2) var3323)) ; Statement: r0.<org.apache.lucene.util.BytesRef: int length> = $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var105_maxUTF8Length/180595995=([int], int), arr-Int-init=([], byte[]), <init>/-1616928143=([org.apache.lucene.util.BytesRef, byte[]], void), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), var105_UTF16toUTF8/853935374=([java.lang.CharSequence, int, int, byte[]], int), length/727234302=([org.apache.lucene.util.BytesRef], int)}
; {var79=org.apache.lucene.util.BytesRef, var3448=r0, var369=r1, var3505=$i0, var105=org.apache.lucene.util.UnicodeUtil, var185=$i1, var759=$r2, var3987=$i2, var3881=$r3, var3323=$i3}
; {org.apache.lucene.util.BytesRef=var79, r0=var3448, r1=var369, $i0=var3505, org.apache.lucene.util.UnicodeUtil=var105, $i1=var185, $r2=var759, $i2=var3987, $r3=var3881, $i3=var3323}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 2}
;stmts r0 := @this: org.apache.lucene.util.BytesRef;	r1 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i1 = staticinvoke <org.apache.lucene.util.UnicodeUtil: int maxUTF8Length(int)>($i0);	$r2 = newarray (byte)[$i1];	specialinvoke r0.<org.apache.lucene.util.BytesRef: void <init>(byte[])>($r2);	$i2 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$r3 = r0.<org.apache.lucene.util.BytesRef: byte[] bytes>;	$i3 = staticinvoke <org.apache.lucene.util.UnicodeUtil: int UTF16toUTF8(java.lang.CharSequence,int,int,byte[])>(r1, 0, $i2, $r3);	r0.<org.apache.lucene.util.BytesRef: int length> = $i3;	return
;block_num 1