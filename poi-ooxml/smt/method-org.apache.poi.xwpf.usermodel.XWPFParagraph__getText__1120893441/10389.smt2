(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2075 0)
(declare-sort var205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun iruns/1384511242 (var2075) var205)
(declare-fun var205_iterator/-912451715 (var205) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun footnoteText/1384511242 (var2075) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2075 var2075)
(declare-const var3092 var2075) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var3092 null-var2075)))
(define-const var2053 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2053 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var2053!1 String)
(declare-const var2214 Int)
(define-const var2195 var205 (iruns/1384511242 var3092)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List iruns> 
(define-const var458 Iterator (var205_iterator/-912451715 var2195)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var41 Bool (Iterator_hasNext/-1669924200 var458)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.StringBuilder footnoteText> 
(assert (= (ite var41 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2814 String (footnoteText/1384511242 var3092)) ; Statement: $r4 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.StringBuilder footnoteText> 
(assert true)
;(assert (append/-13659068 var2053!1 (cast-from-String-to-String var2814))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r4) 
(declare-const var2053!2 String)
(assert (str.prefixof var2053!1 var2053!2))
(assert true)
(define-const var2881 String (toString/-2075883882 var2053!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), iruns/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.util.List), var205_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), footnoteText/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.lang.StringBuilder), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2075=org.apache.poi.xwpf.usermodel.XWPFParagraph, var3092=r1, var2053=$r0, var2214=64, var205=java.util.List, var2195=$r2, var458=r3, var41=$z0, var2814=$r4, var2881=$r5}
; {org.apache.poi.xwpf.usermodel.XWPFParagraph=var2075, r1=var3092, $r0=var2053, 64=var2214, java.util.List=var205, $r2=var2195, r3=var458, $z0=var41, $r4=var2814, $r5=var2881}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List iruns>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.StringBuilder footnoteText>;	$r4 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.StringBuilder footnoteText>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3