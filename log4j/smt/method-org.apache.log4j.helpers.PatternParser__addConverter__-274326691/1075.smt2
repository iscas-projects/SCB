(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3958 0)
(declare-sort var1365 0)
(declare-sort var944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentLiteral/1478879420 (var3958) String)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun addToList/-876481540 (var3958 var1365) void)
(declare-fun state/1478879420 (var3958) Int)
(declare-fun formattingInfo/1478879420 (var3958) var944)
(declare-fun reset/-749120662 (var944) void)
(declare-const null-var3958 var3958)
(declare-const null-var1365 var1365)
(declare-const var2369 var3958) ; Statement: r0 := @this: org.apache.log4j.helpers.PatternParser 
(assert (not (= var2369 null-var3958)))
(declare-const var3996 var1365) ; Statement: r2 := @parameter0: org.apache.log4j.helpers.PatternConverter 
(assert (not (= var3996 null-var1365)))
(define-const var3075 String (currentLiteral/1478879420 var2369)) ; Statement: $r1 = r0.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral> 
(assert true)
;(assert (setLength/163251007 var3075 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3075!1 String)
(declare-const var968 Int)
(assert true)
;(assert (addToList/-876481540 var2369 var3996)) ; Statement: specialinvoke r0.<org.apache.log4j.helpers.PatternParser: void addToList(org.apache.log4j.helpers.PatternConverter)>(r2) 

(declare-const var2369!1 var3958)
(declare-const var3996!1 var1365)
(declare-const var2369!2 var3958)
(assert (not (= var2369!2 null-var3958)))
(assert (= (state/1478879420 var2369!2) 0)) ; Statement: r0.<org.apache.log4j.helpers.PatternParser: int state> = 0 
(define-const var3443 var944 (formattingInfo/1478879420 var2369!2)) ; Statement: $r3 = r0.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo> 
(assert true)
;(assert (reset/-749120662 var3443)) ; Statement: virtualinvoke $r3.<org.apache.log4j.helpers.FormattingInfo: void reset()>() 

(declare-const var3443!1 var944)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentLiteral/1478879420=([org.apache.log4j.helpers.PatternParser], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), addToList/-876481540=([org.apache.log4j.helpers.PatternParser, org.apache.log4j.helpers.PatternConverter], void), state/1478879420=([org.apache.log4j.helpers.PatternParser], int), formattingInfo/1478879420=([org.apache.log4j.helpers.PatternParser], org.apache.log4j.helpers.FormattingInfo), reset/-749120662=([org.apache.log4j.helpers.FormattingInfo], void)}
; {var3958=org.apache.log4j.helpers.PatternParser, var2369=r0, var1365=org.apache.log4j.helpers.PatternConverter, var3996=r2, var3075=$r1, var968=0, var944=org.apache.log4j.helpers.FormattingInfo, var3443=$r3}
; {org.apache.log4j.helpers.PatternParser=var3958, r0=var2369, org.apache.log4j.helpers.PatternConverter=var1365, r2=var3996, $r1=var3075, 0=var968, org.apache.log4j.helpers.FormattingInfo=var944, $r3=var3443}
;seq <java.lang.StringBuffer: void setLength(int)>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.PatternParser;	r2 := @parameter0: org.apache.log4j.helpers.PatternConverter;	$r1 = r0.<org.apache.log4j.helpers.PatternParser: java.lang.StringBuffer currentLiteral>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	specialinvoke r0.<org.apache.log4j.helpers.PatternParser: void addToList(org.apache.log4j.helpers.PatternConverter)>(r2);	r0.<org.apache.log4j.helpers.PatternParser: int state> = 0;	$r3 = r0.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.FormattingInfo formattingInfo>;	virtualinvoke $r3.<org.apache.log4j.helpers.FormattingInfo: void reset()>();	return
;block_num 1