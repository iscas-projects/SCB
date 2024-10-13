(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var905 0)
(declare-sort var2558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2558_cleanBlank/-399824491 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2558_removeSuffix/2059861302 (String String) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-String String)
(declare-const var2175 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2175 null-String)))
(define-const var1978 String (var2558_cleanBlank/-399824491 (cast-from-String-to-String var2175))) ; Statement: r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String cleanBlank(java.lang.CharSequence)>(r6) 
(define-const var1741 String (var2558_removeSuffix/2059861302 (cast-from-String-to-String var1978) (cast-from-String-to-String "="))) ; Statement: r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removeSuffix(java.lang.CharSequence,java.lang.CharSequence)>(r7, "=") 
(assert true)
(define-const var3155 (Array Int Int) (toCharArray/415275702 var1741)) ; Statement: r0 = virtualinvoke r8.<java.lang.String: char[] toCharArray()>() 
(define-const var3091 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var1676 Int (getLength-Arr-Int-1 var3155)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i7 >= $i0 goto $c1 = r0[0] 
(assert (>= var3091 var1676)) ; Cond: i7 >= $i0 
(define-const var2944 Int (select var3155 0)) ; Statement: $c1 = r0[0] 
(define-const var976 Int (cast-from-Int-to-Int var2944)) ; Statement: $i16 = (int) $c1 
 ; Statement: if $i16 != 126 goto $r12 = new java.lang.String 
(assert (not (= var976 126))) ; Cond: $i16 != 126 
(define-const var1029 String String-init) ; Statement: $r12 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1029 var3155)) ; Statement: specialinvoke $r12.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var1029!1 String)
(declare-const var3155!1 (Array Int Int))
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2558_cleanBlank/-399824491=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2558_removeSuffix/2059861302=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2175=r6, var905=null_type, var2558=cn.hutool.core.text.CharSequenceUtil, var1978=r7, var1741=r8, var3155=r0, var3091=i7, var1676=$i0, var2944=$c1, var976=$i16, var1029=$r12}
; {r6=var2175, null_type=var905, cn.hutool.core.text.CharSequenceUtil=var2558, r7=var1978, r8=var1741, r0=var3155, i7=var3091, $i0=var1676, $c1=var2944, $i16=var976, $r12=var1029}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r6 := @parameter0: java.lang.String;	r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String cleanBlank(java.lang.CharSequence)>(r6);	r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removeSuffix(java.lang.CharSequence,java.lang.CharSequence)>(r7, "=");	r0 = virtualinvoke r8.<java.lang.String: char[] toCharArray()>();	i7 = 0;	$i0 = lengthof r0;	if i7 >= $i0 goto $c1 = r0[0];	$c1 = r0[0];	$i16 = (int) $c1;	if $i16 != 126 goto $r12 = new java.lang.String;	$r12 = new java.lang.String;	specialinvoke $r12.<java.lang.String: void <init>(char[])>(r0);	return $r12
;block_num 4