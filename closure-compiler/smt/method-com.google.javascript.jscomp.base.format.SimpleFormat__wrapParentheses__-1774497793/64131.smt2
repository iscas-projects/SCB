(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1199 0)
(declare-sort var1908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setCharAt/-2056395727 (String Int Int) void)
(declare-fun formatToken/-1920232736 (var1199) var1908)
(declare-fun flagZero/-803315618 (var1908) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun padding/-1138304859 (var1199 String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1199 var1199)
(declare-const null-String String)
(declare-const var2766 var1199) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var2766 null-var1199)))
(declare-const var2054 String) ; Statement: r6 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2054 null-String)))
(assert true)
;(assert (setCharAt/-2056395727 var2054 0 40)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: void setCharAt(int,char)>(0, 40) 

(declare-const var2054!1 String)
(declare-const var2597 Int)
(declare-const var2462 Int)
(define-const var2236 var1908 (formatToken/-1920232736 var2766)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(define-const var3301 Bool (flagZero/-803315618 var2236)) ; Statement: $z0 = $r1.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: boolean flagZero> 
 ; Statement: if $z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var3301 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var2054!1 41)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2054!2 String)
(assert (str.prefixof var2054!1 var2054!2))
(assert true)
(define-const var1244 String (padding/-1138304859 var2766 (cast-from-String-to-String var2054!2) 0)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.CharSequence padding(java.lang.CharSequence,int)>(r6, 0) 
(define-const var3380 String (cast-from-String-to-String var1244)) ; Statement: r7 = (java.lang.StringBuilder) $r2 
(assert true) ; Non Conditional
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {setCharAt/-2056395727=([java.lang.StringBuilder, int, char], void), formatToken/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken), flagZero/-803315618=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), padding/-1138304859=([com.google.javascript.jscomp.base.format.SimpleFormat, java.lang.CharSequence, int], java.lang.CharSequence), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence)}
; {var1199=com.google.javascript.jscomp.base.format.SimpleFormat, var2766=r0, var2054=r6, var2597=0, var2462=40, var1908=com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, var2236=$r1, var3301=$z0, var1244=$r2, var3380=r7}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var1199, r0=var2766, r6=var2054, 0=var2597, 40=var2462, com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken=var1908, $r1=var2236, $z0=var3301, $r2=var1244, r7=var3380}
;seq <java.lang.StringBuilder: void setCharAt(int,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void setCharAt(int,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	r6 := @parameter0: java.lang.StringBuilder;	virtualinvoke r6.<java.lang.StringBuilder: void setCharAt(int,char)>(0, 40);	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	$z0 = $r1.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: boolean flagZero>;	if $z0 == 0 goto virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.CharSequence padding(java.lang.CharSequence,int)>(r6, 0);	r7 = (java.lang.StringBuilder) $r2;	return r7
;block_num 3