(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var397 0)
(declare-sort var2832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun appendUnescaped/949563005 (var397) void)
(declare-fun incrementForEscapedChar/98327214 (var397) void)
(declare-fun val$sb/1425138746 (var397) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var397 var397)
(declare-const null-String String)
(declare-const var3921 var397) ; Statement: r0 := @this: com.google.debugging.sourcemap.Util$1UnescapedRegion 
(assert (not (= var3921 null-var397)))
(declare-const var3942 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3942 null-String)))
(assert true)
;(assert (appendUnescaped/949563005 var3921)) ; Statement: virtualinvoke r0.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void appendUnescaped()>() 

(declare-const var3921!1 var397)
(assert true)
;(assert (incrementForEscapedChar/98327214 var3921!1)) ; Statement: virtualinvoke r0.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void incrementForEscapedChar()>() 

(declare-const var3921!2 var397)
(define-const var2155 String (val$sb/1425138746 var3921!2)) ; Statement: $r2 = r0.<com.google.debugging.sourcemap.Util$1UnescapedRegion: java.lang.StringBuilder val$sb> 
(assert true)
;(assert (append/672562846 var2155 var3942)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2155!1 String)
(assert (= var2155!1 (str.++ var2155 var3942)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {appendUnescaped/949563005=([com.google.debugging.sourcemap.Util$1UnescapedRegion], void), incrementForEscapedChar/98327214=([com.google.debugging.sourcemap.Util$1UnescapedRegion], void), val$sb/1425138746=([com.google.debugging.sourcemap.Util$1UnescapedRegion], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var397=com.google.debugging.sourcemap.Util$1UnescapedRegion, var3921=r0, var3942=r1, var2832=null_type, var2155=$r2}
; {com.google.debugging.sourcemap.Util$1UnescapedRegion=var397, r0=var3921, r1=var3942, null_type=var2832, $r2=var2155}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.debugging.sourcemap.Util$1UnescapedRegion;	r1 := @parameter0: java.lang.String;	virtualinvoke r0.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void appendUnescaped()>();	virtualinvoke r0.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void incrementForEscapedChar()>();	$r2 = r0.<com.google.debugging.sourcemap.Util$1UnescapedRegion: java.lang.StringBuilder val$sb>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1