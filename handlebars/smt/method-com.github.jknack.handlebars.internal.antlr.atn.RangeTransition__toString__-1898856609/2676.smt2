(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun from/-967612417 (var1879) Int)
(declare-fun appendCodePoint/-693552229 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun to/-967612417 (var1879) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1879 var1879)
(declare-const var1611 var1879) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.RangeTransition 
(assert (not (= var1611 null-var1879)))
(define-const var3163 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3163 "\u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var3163!1 String)
(assert (= var3163!1 "\u0027"))
(define-const var3407 Int (from/-967612417 var1611)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.RangeTransition: int 'from'> 
(assert true)
(define-const var1434 String (appendCodePoint/-693552229 var3163!1 var3407)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i0) 
(assert true)
(define-const var791 String (append/672562846 var1434 "\u0027..\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'..\'") 
(declare-const var1434!1 String)
(assert (= var1434!1 (str.++ var1434 "\u0027..\u0027")))
(define-const var2930 Int (to/-967612417 var1611)) ; Statement: $i1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.RangeTransition: int 'to'> 
(assert true)
(define-const var3236 String (appendCodePoint/-693552229 var791 var2930)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i1) 
(assert true)
(define-const var800 String (append/672562846 var3236 "\u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3236!1 String)
(assert (= var3236!1 (str.++ var3236 "\u0027")))
(assert true)
(define-const var373 String (toString/-2075883882 var800)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), from/-967612417=([com.github.jknack.handlebars.internal.antlr.atn.RangeTransition], int), appendCodePoint/-693552229=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), to/-967612417=([com.github.jknack.handlebars.internal.antlr.atn.RangeTransition], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1879=com.github.jknack.handlebars.internal.antlr.atn.RangeTransition, var1611=r1, var3163=$r0, var3407=$i0, var1434=$r2, var791=$r3, var2930=$i1, var3236=$r4, var800=$r5, var373=$r6}
; {com.github.jknack.handlebars.internal.antlr.atn.RangeTransition=var1879, r1=var1611, $r0=var3163, $i0=var3407, $r2=var1434, $r3=var791, $i1=var2930, $r4=var3236, $r5=var800, $r6=var373}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.RangeTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.RangeTransition: int 'from'>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'..\'");	$i1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.RangeTransition: int 'to'>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1