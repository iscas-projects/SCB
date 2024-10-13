(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1929 0)
(declare-sort var2798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/-1810769671 (var1929) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun var2798_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1929 var1929)
(declare-const null-Bool Bool)
(declare-const var2897 var1929) ; Statement: r2 := @this: freemarker.core.TextBlock 
(assert (not (= var2897 null-var1929)))
(declare-const var1857 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1857 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (= (ite var1857 1 0) 0)) ; Cond: z0 == 0 
(define-const var3584 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3584)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3584!1 String)
(assert (= var3584!1 ""))
(assert true)
(define-const var370 String (append/672562846 var3584!1 "text ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("text ") 
(declare-const var3584!2 String)
(assert (= var3584!2 (str.++ var3584!1 "text ")))
(define-const var2288 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var1647 (Array Int Int) (text/-1810769671 var2897)) ; Statement: $r3 = r2.<freemarker.core.TextBlock: char[] text> 
(assert true)
;(assert (<init>/-915723298 var2288 var1647)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>($r3) 

(declare-const var2288!1 String)
(declare-const var1647!1 (Array Int Int))
(define-const var3326 String (var2798_jQuote/1315253176 var2288!1)) ; Statement: $r4 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r1) 
(assert true)
(define-const var2707 String (append/672562846 var370 var3326)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var370!1 String)
(assert (= var370!1 (str.++ var370 var3326)))
(assert true)
(define-const var2931 String (toString/-2075883882 var2707)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), text/-1810769671=([freemarker.core.TextBlock], char[]), <init>/-915723298=([java.lang.String, char[]], void), var2798_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1929=freemarker.core.TextBlock, var2897=r2, var1857=z0, var3584=$r0, var370=$r5, var2288=$r1, var1647=$r3, var2798=freemarker.template.utility.StringUtil, var3326=$r4, var2707=$r6, var2931=$r7}
; {freemarker.core.TextBlock=var1929, r2=var2897, z0=var1857, $r0=var3584, $r5=var370, $r1=var2288, $r3=var1647, freemarker.template.utility.StringUtil=var2798, $r4=var3326, $r6=var2707, $r7=var2931}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: void <init>(char[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: freemarker.core.TextBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("text ");	$r1 = new java.lang.String;	$r3 = r2.<freemarker.core.TextBlock: char[] text>;	specialinvoke $r1.<java.lang.String: void <init>(char[])>($r3);	$r4 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2