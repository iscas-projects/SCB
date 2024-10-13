(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2233 0)
(declare-sort var288 0)
(declare-sort var3718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun read/-46651916 (var288) Int)
(declare-fun var3718_lineSeparator/-342590142 () String)
(declare-fun eol/595708403 (var2233) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2233 var2233)
(declare-const null-var288 var288)
(declare-const var1025 var2233) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties 
(assert (not (= var1025 null-var2233)))
(declare-const var2128 var288) ; Statement: r1 := @parameter0: java.io.PushbackReader 
(assert (not (= var2128 null-var288)))
(define-const var2110 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2110 80)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(80) 

(declare-const var2110!1 String)
(declare-const var1170 Int)
(assert true)
(define-const var3833 Int (read/-46651916 var2128)) ; Statement: i1 = virtualinvoke r1.<java.io.PushbackReader: int read()>() 
(define-const var103 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var3276 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2433 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2965 String var3718_lineSeparator/-342590142) ; Statement: $r3 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(declare-const var1025!1 var2233)
(assert (not (= var1025!1 null-var2233)))
(assert (= (eol/595708403 var1025!1) var2965)) ; Statement: r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String eol> = $r3 
(assert true) ; Non Conditional
 ; Statement: if i1 < 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (< var3833 0)) ; Cond: i1 < 0 
(assert true)
(define-const var906 String (toString/-2075883882 var2110!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), read/-46651916=([java.io.PushbackReader], int), var3718_lineSeparator/-342590142=([], java.lang.String), eol/595708403=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2233=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, var1025=r2, var288=java.io.PushbackReader, var2128=r1, var2110=$r0, var1170=80, var3833=i1, var103=z0, var3276=z2, var2433=z1, var3718=java.lang.System, var2965=$r3, var906=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties=var2233, r2=var1025, java.io.PushbackReader=var288, r1=var2128, $r0=var2110, 80=var1170, i1=var3833, z0=var103, z2=var3276, z1=var2433, java.lang.System=var3718, $r3=var2965, $r5=var906}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties;	r1 := @parameter0: java.io.PushbackReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(80);	i1 = virtualinvoke r1.<java.io.PushbackReader: int read()>();	z0 = 0;	z2 = 0;	z1 = 0;	$r3 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties: java.lang.String eol> = $r3;	if i1 < 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3