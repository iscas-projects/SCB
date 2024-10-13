(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2107 0)
(declare-sort var1186 0)
(declare-sort var871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getText/-1848968947 (var1186) String)
(declare-fun cast-from-var2107-to-var1186 (var2107) var1186)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun commentText/-2129733266 (var2107) String)
(declare-fun append/-1031950772 (String var871) String)
(declare-fun cast-from-String-to-var871 (String) var871)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2107 var2107)
(declare-const var231 var2107) ; Statement: r1 := @this: org.apache.poi.xwpf.model.XWPFCommentsDecorator 
(assert (not (= var231 null-var2107)))
(define-const var3160 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3160)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3160!1 String)
(assert (= var3160!1 ""))
(assert true)
(define-const var926 String (getText/-1848968947 (cast-from-var2107-to-var1186 var231))) ; Statement: $r2 = specialinvoke r1.<org.apache.poi.xwpf.model.XWPFParagraphDecorator: java.lang.String getText()>() 
(assert true)
(define-const var752 String (append/672562846 var3160!1 var926)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3160!2 String)
(assert (= var3160!2 (str.++ var3160!1 var926)))
(define-const var3724 String (commentText/-2129733266 var231)) ; Statement: $r3 = r1.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: java.lang.StringBuilder commentText> 
(assert true)
(define-const var3255 String (append/-1031950772 var752 (cast-from-String-to-var871 var3724))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var752!1 String)
(assert (str.prefixof var752 var752!1))
(assert true)
(define-const var1574 String (toString/-2075883882 var3255)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getText/-1848968947=([org.apache.poi.xwpf.model.XWPFParagraphDecorator], java.lang.String), cast-from-var2107-to-var1186=([org.apache.poi.xwpf.model.XWPFCommentsDecorator], org.apache.poi.xwpf.model.XWPFParagraphDecorator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), commentText/-2129733266=([org.apache.poi.xwpf.model.XWPFCommentsDecorator], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var871=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2107=org.apache.poi.xwpf.model.XWPFCommentsDecorator, var231=r1, var3160=$r0, var1186=org.apache.poi.xwpf.model.XWPFParagraphDecorator, var926=$r2, var752=$r4, var3724=$r3, var871=java.lang.Object, var3255=$r5, var1574=$r6}
; {org.apache.poi.xwpf.model.XWPFCommentsDecorator=var2107, r1=var231, $r0=var3160, org.apache.poi.xwpf.model.XWPFParagraphDecorator=var1186, $r2=var926, $r4=var752, $r3=var3724, java.lang.Object=var871, $r5=var3255, $r6=var1574}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.model.XWPFCommentsDecorator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.poi.xwpf.model.XWPFParagraphDecorator: java.lang.String getText()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: java.lang.StringBuilder commentText>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1