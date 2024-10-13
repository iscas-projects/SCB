(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var825 0)
(declare-sort var1741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setCharAt/-2056395727 (String Int Int) void)
(declare-fun formatToken/-1920232736 (var825) var1741)
(declare-fun flagZero/-803315618 (var1741) Bool)
(declare-fun getWidth/1724390228 (var1741) Int)
(declare-fun setWidth/1666443908 (var1741 Int) void)
(declare-fun padding/-1138304859 (var825 String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var825 var825)
(declare-const null-String String)
(declare-const var1332 var825) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var1332 null-var825)))
(declare-const var1861 String) ; Statement: r6 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1861 null-String)))
(assert true)
;(assert (setCharAt/-2056395727 var1861 0 40)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: void setCharAt(int,char)>(0, 40) 

(declare-const var1861!1 String)
(declare-const var186 Int)
(declare-const var1194 Int)
(define-const var588 var1741 (formatToken/-1920232736 var1332)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(define-const var3539 Bool (flagZero/-803315618 var588)) ; Statement: $z0 = $r1.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: boolean flagZero> 
 ; Statement: if $z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (not (= (ite var3539 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var146 var1741 (formatToken/-1920232736 var1332)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(define-const var721 var1741 (formatToken/-1920232736 var1332)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(assert true)
(define-const var3676 Int (getWidth/1724390228 var721)) ; Statement: $i0 = virtualinvoke $r3.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getWidth()>() 
(define-const var3097 Int (- var3676 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
;(assert (setWidth/1666443908 var146 var3097)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: void setWidth(int)>($i1) 

(declare-const var146!1 var1741)
(declare-const var3097!1 Int)
(assert true)
(define-const var2452 String (padding/-1138304859 var1332 (cast-from-String-to-String var1861!1) 1)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.CharSequence padding(java.lang.CharSequence,int)>(r6, 1) 
(define-const var3577 String (cast-from-String-to-String var2452)) ; Statement: r7 = (java.lang.StringBuilder) $r5 
(assert true)
;(assert (append/-1166366385 var3577 41)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3577!1 String)
(assert (str.prefixof var3577 var3577!1))
 ; Statement: goto [?= return r7] 
(assert true) ; Non Conditional
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {setCharAt/-2056395727=([java.lang.StringBuilder, int, char], void), formatToken/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken), flagZero/-803315618=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], boolean), getWidth/1724390228=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], int), setWidth/1666443908=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, int], void), padding/-1138304859=([com.google.javascript.jscomp.base.format.SimpleFormat, java.lang.CharSequence, int], java.lang.CharSequence), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var825=com.google.javascript.jscomp.base.format.SimpleFormat, var1332=r0, var1861=r6, var186=0, var1194=40, var1741=com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, var588=$r1, var3539=$z0, var146=$r4, var721=$r3, var3676=$i0, var3097=$i1, var2452=$r5, var3577=r7}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var825, r0=var1332, r6=var1861, 0=var186, 40=var1194, com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken=var1741, $r1=var588, $z0=var3539, $r4=var146, $r3=var721, $i0=var3676, $i1=var3097, $r5=var2452, r7=var3577}
;seq <java.lang.StringBuilder: void setCharAt(int,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void setCharAt(int,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	r6 := @parameter0: java.lang.StringBuilder;	virtualinvoke r6.<java.lang.StringBuilder: void setCharAt(int,char)>(0, 40);	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	$z0 = $r1.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: boolean flagZero>;	if $z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r4 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	$r3 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	$i0 = virtualinvoke $r3.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getWidth()>();	$i1 = $i0 - 1;	virtualinvoke $r4.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: void setWidth(int)>($i1);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.CharSequence padding(java.lang.CharSequence,int)>(r6, 1);	r7 = (java.lang.StringBuilder) $r5;	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	goto [?= return r7];	return r7
;block_num 3