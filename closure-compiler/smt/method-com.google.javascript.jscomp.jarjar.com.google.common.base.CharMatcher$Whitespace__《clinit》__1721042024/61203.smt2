(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_numberOfLeadingZeros/527677734 (Int) Int)
(declare-fun var1805-init () var1805)
(declare-fun <init>/1131713791 (var1805) void)
(define-const var3706 String "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000") ; Statement: $r0 = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000" 
(assert true)
(define-const var1890 Int (length/-134980193 var3706)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var3479 Int (- var1890 1)) ; Statement: $i1 = $i0 - 1 
(define-const var3745 Int (Int_numberOfLeadingZeros/527677734 var3479)) ; Statement: $i2 = staticinvoke <java.lang.Integer: int numberOfLeadingZeros(int)>($i1) 
(define-const var1707 Int var3745) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: int SHIFT> = $i2 
(define-const var3772 var1805 var1805-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace 
(assert true)
;(assert (<init>/1131713791 var3772)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: void <init>()>() 

(declare-const var3772!1 var1805)
(define-const var3219 var1805 var3772!1) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace INSTANCE> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), Int_numberOfLeadingZeros/527677734=([int], int), var1805-init=([], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace), <init>/1131713791=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace], void)}
; {var3706=$r0, var1890=$i0, var3479=$i1, var3745=$i2, var1707=<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: int SHIFT>, var1805=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace, var3772=$r1, var3219=<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace INSTANCE>}
; {$r0=var3706, $i0=var1890, $i1=var3479, $i2=var3745, <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: int SHIFT>=var1707, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace=var1805, $r1=var3772, <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace INSTANCE>=var3219}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$i2 = staticinvoke <java.lang.Integer: int numberOfLeadingZeros(int)>($i1);	<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: int SHIFT> = $i2;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace;	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: void <init>()>();	<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace INSTANCE> = $r1;	return
;block_num 1