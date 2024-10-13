(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2414 0)
(declare-sort var30 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var30-init () var30)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var30 String) void)
(declare-const null-var2414 var2414)
(declare-const null-Int Int)
(declare-const var3806 var2414) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8 
(assert (not (= var3806 null-var2414)))
(declare-const var1108 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1108 null-Int)))
(define-const var3332 Int (cast-from-Int-to-Int var1108)) ; Statement: $i8 = (int) c0 
 ; Statement: if $i8 <= 128 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int off> 
(assert (not (<= var3332 128))) ; Negate: Cond: $i8 <= 128  
(define-const var2798 var30 var30-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2083 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2083)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2083!1 String)
(assert (= var2083!1 ""))
(assert true)
(define-const var536 String (append/672562846 var2083!1 "not support ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support ") 
(declare-const var2083!2 String)
(assert (= var2083!2 (str.++ var2083!1 "not support ")))
(assert true)
(define-const var3550 String (append/-1166366385 var536 var1108)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var536!1 String)
(assert (str.prefixof var536 var536!1))
(assert true)
(define-const var3022 String (toString/-2075883882 var3550)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2798 var3022)) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7) 

(declare-const var2798!1 var30)
(declare-const var3022!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var30-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2414=com.alibaba.fastjson2.JSONWriterUTF8, var3806=r0, var1108=c0, var3332=$i8, var30=com.alibaba.fastjson2.JSONException, var2798=$r9, var2083=$r8, var536=$r5, var3550=$r6, var3022=$r7}
; {com.alibaba.fastjson2.JSONWriterUTF8=var2414, r0=var3806, c0=var1108, $i8=var3332, com.alibaba.fastjson2.JSONException=var30, $r9=var2798, $r8=var2083, $r5=var536, $r6=var3550, $r7=var3022}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8;	c0 := @parameter0: char;	$i8 = (int) c0;	if $i8 <= 128 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int off>;	$r9 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7);	throw $r9
;block_num 2