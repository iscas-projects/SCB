(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2614 0)
(declare-sort var2005 0)
(declare-sort var1058 0)
(declare-sort var203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var2005 Int) Bool)
(declare-fun readTypeHashCode/-2035886982 (var2005) Int)
(declare-fun var203-init () var203)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1018493317 (var2005) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var203 String) void)
(declare-const null-var2614 var2614)
(declare-const null-var2005 var2005)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1058 var1058)
(declare-const null-Int Int)
(declare-const var2614-TYPE_HASH Int)
(declare-const var1120 var2614) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray 
(assert (not (= var1120 null-var2614)))
(declare-const var438 var2005) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var438 null-var2005)))
(declare-const var2503 ClassObject) ; Statement: r12 := @parameter1: java.lang.reflect.Type 
(assert (not (= var2503 null-ClassObject)))
(declare-const var1717 var1058) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var1717 null-var1058)))
(declare-const var3377 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var3377 null-Int)))
(assert true)
(define-const var1803 Bool (nextIfMatch/-1486561452 var438 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= (ite var1803 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1669 Int (readTypeHashCode/-2035886982 var438)) ; Statement: l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>() 
(define-const var3592 Int var2614-TYPE_HASH) ; Statement: $l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray: long TYPE_HASH> 
(define-const var2048 Int (ite (> var1669 var3592) 1 (ite (< var1669 var3592) (- 1) 0))) ; Statement: $b1 = l4 cmp $l0 
 ; Statement: if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= var2048 0))) ; Negate: Cond: $b1 == 0  
(define-const var1967 var203 var203-init) ; Statement: $r15 = new com.alibaba.fastjson2.JSONException 
(define-const var11 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var11)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var11!1 String)
(assert (= var11!1 ""))
(assert true)
(define-const var574 String (append/672562846 var11!1 "not support autoType : ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ") 
(declare-const var11!2 String)
(assert (= var11!2 (str.++ var11!1 "not support autoType : ")))
(assert true)
(define-const var3258 String (getString/1018493317 var438)) ; Statement: $r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(assert true)
(define-const var1879 String (append/672562846 var574 var3258)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var574!1 String)
(assert (= var574!1 (str.++ var574 var3258)))
(assert true)
(define-const var79 String (toString/-2075883882 var1879)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1967 var79)) ; Statement: specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11) 

(declare-const var1967!1 var203)
(declare-const var79!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), readTypeHashCode/-2035886982=([com.alibaba.fastjson2.JSONReader], long), var203-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2614=com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray, var1120=r2, var2005=com.alibaba.fastjson2.JSONReader, var438=r0, var2503=r12, var1058=java.lang.Object, var1717=r13, var3377=l3, var1803=$z0, var1669=l4, var3592=$l0, var2048=$b1, var203=com.alibaba.fastjson2.JSONException, var1967=$r15, var11=$r14, var574=$r9, var3258=$r8, var1879=$r10, var79=$r11}
; {com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray=var2614, r2=var1120, com.alibaba.fastjson2.JSONReader=var2005, r0=var438, r12=var2503, java.lang.Object=var1058, r13=var1717, l3=var3377, $z0=var1803, l4=var1669, $l0=var3592, $b1=var2048, com.alibaba.fastjson2.JSONException=var203, $r15=var1967, $r14=var11, $r9=var574, $r8=var3258, $r10=var1879, $r11=var79}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r12 := @parameter1: java.lang.reflect.Type;	r13 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>();	$l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplFloatValueArray: long TYPE_HASH>;	$b1 = l4 cmp $l0;	if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$r15 = new com.alibaba.fastjson2.JSONException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ");	$r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11);	throw $r15
;block_num 3