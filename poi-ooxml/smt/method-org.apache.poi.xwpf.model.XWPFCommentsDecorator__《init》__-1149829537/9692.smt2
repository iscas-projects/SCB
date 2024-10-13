(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var332 0)
(declare-sort var3097 0)
(declare-sort var3665 0)
(declare-sort var570 0)
(declare-sort var273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/542731119 (var3665 var3097 var3665) void)
(declare-fun cast-from-var332-to-var3665 (var332) var3665)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun commentText/-2129733266 (var332) String)
(declare-fun getCTP/1246847205 (var3097) var570)
(declare-fun var570_getCommentRangeStartArray/-251448913 (var570) (Array Int var273))
(declare-fun getLength-Arr-var273-1 ((Array Int var273)) Int)
(declare-const null-var332 var332)
(declare-const null-var3097 var3097)
(declare-const null-var3665 var3665)
(declare-const var463 var332) ; Statement: r0 := @this: org.apache.poi.xwpf.model.XWPFCommentsDecorator 
(assert (not (= var463 null-var332)))
(declare-const var2530 var3097) ; Statement: r1 := @parameter0: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var2530 null-var3097)))
(declare-const var1657 var3665) ; Statement: r2 := @parameter1: org.apache.poi.xwpf.model.XWPFParagraphDecorator 
(assert (not (= var1657 null-var3665)))
(assert true)
;(assert (<init>/542731119 (cast-from-var332-to-var3665 var463) var2530 var1657)) ; Statement: specialinvoke r0.<org.apache.poi.xwpf.model.XWPFParagraphDecorator: void <init>(org.apache.poi.xwpf.usermodel.XWPFParagraph,org.apache.poi.xwpf.model.XWPFParagraphDecorator)>(r1, r2) 

(declare-const var463!1 var332)
(declare-const var2530!1 var3097)
(declare-const var1657!1 var3665)
(define-const var3961 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3961 64)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var3961!1 String)
(declare-const var1541 Int)
(declare-const var463!2 var332)
(assert (not (= var463!2 null-var332)))
(assert (= (commentText/-2129733266 var463!2) var3961!1)) ; Statement: r0.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: java.lang.StringBuilder commentText> = $r3 
(assert true)
(define-const var861 var570 (getCTP/1246847205 var2530!1)) ; Statement: $r4 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP getCTP()>() 
(define-const var303 (Array Int var273) (var570_getCommentRangeStartArray/-251448913 var861)) ; Statement: r5 = interfaceinvoke $r4.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange[] getCommentRangeStartArray()>() 
(define-const var429 Int (getLength-Arr-var273-1 var303)) ; Statement: i0 = lengthof r5 
(define-const var2665 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var2665 var429)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/542731119=([org.apache.poi.xwpf.model.XWPFParagraphDecorator, org.apache.poi.xwpf.usermodel.XWPFParagraph, org.apache.poi.xwpf.model.XWPFParagraphDecorator], void), cast-from-var332-to-var3665=([org.apache.poi.xwpf.model.XWPFCommentsDecorator], org.apache.poi.xwpf.model.XWPFParagraphDecorator), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), commentText/-2129733266=([org.apache.poi.xwpf.model.XWPFCommentsDecorator], java.lang.StringBuilder), getCTP/1246847205=([org.apache.poi.xwpf.usermodel.XWPFParagraph], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP), var570_getCommentRangeStartArray/-251448913=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange[]), getLength-Arr-var273-1=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange[]], int)}
; {var332=org.apache.poi.xwpf.model.XWPFCommentsDecorator, var463=r0, var3097=org.apache.poi.xwpf.usermodel.XWPFParagraph, var2530=r1, var3665=org.apache.poi.xwpf.model.XWPFParagraphDecorator, var1657=r2, var3961=$r3, var1541=64, var570=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, var861=$r4, var273=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange, var303=r5, var429=i0, var2665=i1}
; {org.apache.poi.xwpf.model.XWPFCommentsDecorator=var332, r0=var463, org.apache.poi.xwpf.usermodel.XWPFParagraph=var3097, r1=var2530, org.apache.poi.xwpf.model.XWPFParagraphDecorator=var3665, r2=var1657, $r3=var3961, 64=var1541, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP=var570, $r4=var861, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange=var273, r5=var303, i0=var429, i1=var2665}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.model.XWPFCommentsDecorator;	r1 := @parameter0: org.apache.poi.xwpf.usermodel.XWPFParagraph;	r2 := @parameter1: org.apache.poi.xwpf.model.XWPFParagraphDecorator;	specialinvoke r0.<org.apache.poi.xwpf.model.XWPFParagraphDecorator: void <init>(org.apache.poi.xwpf.usermodel.XWPFParagraph,org.apache.poi.xwpf.model.XWPFParagraphDecorator)>(r1, r2);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(64);	r0.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: java.lang.StringBuilder commentText> = $r3;	$r4 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP getCTP()>();	r5 = interfaceinvoke $r4.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange[] getCommentRangeStartArray()>();	i0 = lengthof r5;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3