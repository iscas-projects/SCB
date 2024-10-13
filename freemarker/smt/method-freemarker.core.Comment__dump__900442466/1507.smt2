(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3190 0)
(declare-sort var833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/230069816 (var3190) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var833_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3190 var3190)
(declare-const null-Bool Bool)
(declare-const var477 var3190) ; Statement: r1 := @this: freemarker.core.Comment 
(assert (not (= var477 null-var3190)))
(declare-const var180 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var180 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (= (ite var180 1 0) 0)) ; Cond: z0 == 0 
(define-const var961 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var961)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var961!1 String)
(assert (= var961!1 ""))
(assert true)
(define-const var3064 String (append/672562846 var961!1 "comment ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("comment ") 
(declare-const var961!2 String)
(assert (= var961!2 (str.++ var961!1 "comment ")))
(define-const var3664 String (text/230069816 var477)) ; Statement: $r2 = r1.<freemarker.core.Comment: java.lang.String text> 
(assert true)
(define-const var499 String (trim/-847153721 var3664)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(define-const var3709 String (var833_jQuote/1315253176 var499)) ; Statement: $r4 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r3) 
(assert true)
(define-const var514 String (append/672562846 var3064 var3709)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3064!1 String)
(assert (= var3064!1 (str.++ var3064 var3709)))
(assert true)
(define-const var3394 String (toString/-2075883882 var514)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), text/230069816=([freemarker.core.Comment], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var833_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3190=freemarker.core.Comment, var477=r1, var180=z0, var961=$r0, var3064=$r5, var3664=$r2, var499=$r3, var833=freemarker.template.utility.StringUtil, var3709=$r4, var514=$r6, var3394=$r7}
; {freemarker.core.Comment=var3190, r1=var477, z0=var180, $r0=var961, $r5=var3064, $r2=var3664, $r3=var499, freemarker.template.utility.StringUtil=var833, $r4=var3709, $r6=var514, $r7=var3394}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Comment;	z0 := @parameter0: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("comment ");	$r2 = r1.<freemarker.core.Comment: java.lang.String text>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	$r4 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2