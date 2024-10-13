(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3549 0)
(declare-sort var1395 0)
(declare-sort var2816 0)
(declare-sort var1422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastChar/659030463 (var3549) Int)
(declare-fun lineBuf/659030463 (var3549) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun this$0/659030463 (var3549) var1395)
(declare-fun var1395_access$000/-829028094 (var1395) var2816)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun add/1770215592 (var2816 var1422) Bool)
(declare-fun cast-from-String-to-var1422 (String) var1422)
(declare-fun setLength/1276735992 (String Int) void)
(declare-const null-var3549 var3549)
(declare-const null-Int Int)
(declare-const var2095 var3549) ; Statement: r0 := @this: freemarker.template.Template$LineTableBuilder 
(assert (not (= var2095 null-var3549)))
(declare-const var1034 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1034 null-Int)))
 ; Statement: if i0 == 10 goto $i1 = r0.<freemarker.template.Template$LineTableBuilder: int lastChar> 
(assert (= var1034 10)) ; Cond: i0 == 10 
(define-const var1450 Int (lastChar/659030463 var2095)) ; Statement: $i1 = r0.<freemarker.template.Template$LineTableBuilder: int lastChar> 
 ; Statement: if $i1 != 13 goto $r1 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf> 
(assert (not (= var1450 13))) ; Cond: $i1 != 13 
(define-const var2073 String (lineBuf/659030463 var2095)) ; Statement: $r1 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf> 
(define-const var1714 Int (cast-from-Int-to-Int var1034)) ; Statement: $c2 = (char) i0 
(assert true)
;(assert (append/-1166366385 var2073 var1714)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var2073!1 String)
(assert (str.prefixof var2073 var2073!1))
(define-const var543 var1395 (this$0/659030463 var2095)) ; Statement: $r2 = r0.<freemarker.template.Template$LineTableBuilder: freemarker.template.Template this$0> 
(define-const var2594 var2816 (var1395_access$000/-829028094 var543)) ; Statement: $r5 = staticinvoke <freemarker.template.Template: java.util.ArrayList access$000(freemarker.template.Template)>($r2) 
(define-const var2078 String (lineBuf/659030463 var2095)) ; Statement: $r3 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf> 
(assert true)
(define-const var1298 String (toString/-2075883882 var2078)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (add/1770215592 var2594 (cast-from-String-to-var1422 var1298))) ; Statement: virtualinvoke $r5.<java.util.ArrayList: boolean add(java.lang.Object)>($r4) 

(declare-const var2594!1 var2816)
(declare-const var1298!1 String)
(define-const var3737 String (lineBuf/659030463 var2095)) ; Statement: $r6 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf> 
(assert true)
;(assert (setLength/1276735992 var3737 0)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var3737!1 String)
(declare-const var1811 Int)
 ; Statement: goto [?= r0.<freemarker.template.Template$LineTableBuilder: int lastChar> = i0] 
(assert true) ; Non Conditional
(declare-const var2095!1 var3549)
(assert (not (= var2095!1 null-var3549)))
(assert (= (lastChar/659030463 var2095!1) var1034)) ; Statement: r0.<freemarker.template.Template$LineTableBuilder: int lastChar> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastChar/659030463=([freemarker.template.Template$LineTableBuilder], int), lineBuf/659030463=([freemarker.template.Template$LineTableBuilder], java.lang.StringBuilder), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), this$0/659030463=([freemarker.template.Template$LineTableBuilder], freemarker.template.Template), var1395_access$000/-829028094=([freemarker.template.Template], java.util.ArrayList), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), add/1770215592=([java.util.ArrayList, java.lang.Object], boolean), cast-from-String-to-var1422=([java.lang.String], java.lang.Object), setLength/1276735992=([java.lang.StringBuilder, int], void)}
; {var3549=freemarker.template.Template$LineTableBuilder, var2095=r0, var1034=i0, var1450=$i1, var2073=$r1, var1714=$c2, var1395=freemarker.template.Template, var543=$r2, var2816=java.util.ArrayList, var2594=$r5, var2078=$r3, var1298=$r4, var1422=java.lang.Object, var3737=$r6, var1811=0}
; {freemarker.template.Template$LineTableBuilder=var3549, r0=var2095, i0=var1034, $i1=var1450, $r1=var2073, $c2=var1714, freemarker.template.Template=var1395, $r2=var543, java.util.ArrayList=var2816, $r5=var2594, $r3=var2078, $r4=var1298, java.lang.Object=var1422, $r6=var3737, 0=var1811}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: freemarker.template.Template$LineTableBuilder;	i0 := @parameter0: int;	if i0 == 10 goto $i1 = r0.<freemarker.template.Template$LineTableBuilder: int lastChar>;	$i1 = r0.<freemarker.template.Template$LineTableBuilder: int lastChar>;	if $i1 != 13 goto $r1 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf>;	$r1 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf>;	$c2 = (char) i0;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r2 = r0.<freemarker.template.Template$LineTableBuilder: freemarker.template.Template this$0>;	$r5 = staticinvoke <freemarker.template.Template: java.util.ArrayList access$000(freemarker.template.Template)>($r2);	$r3 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.util.ArrayList: boolean add(java.lang.Object)>($r4);	$r6 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf>;	virtualinvoke $r6.<java.lang.StringBuilder: void setLength(int)>(0);	goto [?= r0.<freemarker.template.Template$LineTableBuilder: int lastChar> = i0];	r0.<freemarker.template.Template$LineTableBuilder: int lastChar> = i0;	return
;block_num 4