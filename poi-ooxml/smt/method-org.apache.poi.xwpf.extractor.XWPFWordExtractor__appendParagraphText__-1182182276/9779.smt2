(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2221 0)
(declare-sort var1548 0)
(declare-sort var3897 0)
(declare-sort var2659 0)
(declare-sort var3761 0)
(declare-sort var589 0)
(declare-sort var3327 0)
(declare-sort var876 0)
(declare-sort var1872 0)
(declare-sort var1824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCTP/1246847205 (var1548) var2659)
(declare-fun var2659_getPPr/-1268147617 (var2659) var3761)
(declare-fun getIRuns/-234778348 (var1548) var3327)
(declare-fun var3327_iterator/-912451715 (var3327) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var876-init () var876)
(declare-fun <init>/-1149829537 (var876 var1548 var1872) void)
(declare-fun getCommentText/-942102012 (var876) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getFootnoteText/-1901990015 (var1548) String)
(declare-const null-var2221 var2221)
(declare-const null-String String)
(declare-const null-var1548 var1548)
(declare-const null-var3897 var3897)
(declare-const null-var3761 var3761)
(declare-const null-var589 var589)
(declare-const null-NullType var1824)
(declare-const null-var1872 var1872)
(declare-const var1460 var2221) ; Statement: r5 := @this: org.apache.poi.xwpf.extractor.XWPFWordExtractor 
(assert (not (= var1460 null-var2221)))
(declare-const var2492 String) ; Statement: r6 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2492 null-String)))
(declare-const var1301 var1548) ; Statement: r0 := @parameter1: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var1301 null-var1548)))
(define-const var2753 var3897 null-var3897) ; Statement: r26 = null 
(assert true)
(define-const var3779 var2659 (getCTP/1246847205 var1301)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP getCTP()>() 
(define-const var1718 var3761 (var2659_getPPr/-1268147617 var3779)) ; Statement: $r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr getPPr()>() 
 ; Statement: if $r2 == null goto r27 = null 
(assert (= var1718 null-var3761)) ; Cond: $r2 == null 
(define-const var527 var589 null-var589) ; Statement: r27 = null 
 ; Statement: if r26 == null goto $r3 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List getIRuns()>() 
(assert (= var2753 null-var3897)) ; Cond: r26 == null 
(assert true)
(define-const var5 var3327 (getIRuns/-234778348 var1301)) ; Statement: $r3 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List getIRuns()>() 
(define-const var262 Iterator (var3327_iterator/-912451715 var5)) ; Statement: $r23 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var584 Bool (Iterator_hasNext/-1669924200 var262)) ; Statement: $z4 = interfaceinvoke $r23.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 == 0 goto $r4 = new org.apache.poi.xwpf.model.XWPFCommentsDecorator 
(assert (= (ite var584 1 0) 0)) ; Cond: $z4 == 0 
(define-const var47 var876 var876-init) ; Statement: $r4 = new org.apache.poi.xwpf.model.XWPFCommentsDecorator 
(assert true)
;(assert (<init>/-1149829537 var47 var1301 null-var1872)) ; Statement: specialinvoke $r4.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: void <init>(org.apache.poi.xwpf.usermodel.XWPFParagraph,org.apache.poi.xwpf.model.XWPFParagraphDecorator)>(r0, null) 

(declare-const var47!1 var876)
(declare-const var1301!1 var1548)
(declare-const var2611 var1824)
(assert true)
(define-const var66 String (getCommentText/-942102012 var47!1)) ; Statement: r30 = virtualinvoke $r4.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: java.lang.String getCommentText()>() 
(assert true)
(define-const var2842 Int (length/-134980193 var66)) ; Statement: $i0 = virtualinvoke r30.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r9 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.String getFootnoteText()>() 
(assert (<= var2842 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var1785 String (getFootnoteText/-1901990015 var1301!1)) ; Statement: $r9 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.String getFootnoteText()>() 
 ; Statement: if $r9 == null goto (branch) 
(assert (= var1785 null-String)) ; Cond: $r9 == null 
 ; Statement: if r26 == null goto return 
(assert (= var2753 null-var3897)) ; Cond: r26 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCTP/1246847205=([org.apache.poi.xwpf.usermodel.XWPFParagraph], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP), var2659_getPPr/-1268147617=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr), getIRuns/-234778348=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.util.List), var3327_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var876-init=([], org.apache.poi.xwpf.model.XWPFCommentsDecorator), <init>/-1149829537=([org.apache.poi.xwpf.model.XWPFCommentsDecorator, org.apache.poi.xwpf.usermodel.XWPFParagraph, org.apache.poi.xwpf.model.XWPFParagraphDecorator], void), getCommentText/-942102012=([org.apache.poi.xwpf.model.XWPFCommentsDecorator], java.lang.String), length/-134980193=([java.lang.String], int), getFootnoteText/-1901990015=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.lang.String)}
; {var2221=org.apache.poi.xwpf.extractor.XWPFWordExtractor, var1460=r5, var2492=r6, var1548=org.apache.poi.xwpf.usermodel.XWPFParagraph, var1301=r0, var3897=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr, var2753=r26, var2659=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, var3779=$r1, var3761=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr, var1718=$r2, var589=org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy, var527=r27, var3327=java.util.List, var5=$r3, var262=$r23, var584=$z4, var876=org.apache.poi.xwpf.model.XWPFCommentsDecorator, var47=$r4, var1872=org.apache.poi.xwpf.model.XWPFParagraphDecorator, var2611=null, var1824=null_type, var66=r30, var2842=$i0, var1785=$r9}
; {org.apache.poi.xwpf.extractor.XWPFWordExtractor=var2221, r5=var1460, r6=var2492, org.apache.poi.xwpf.usermodel.XWPFParagraph=var1548, r0=var1301, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr=var3897, r26=var2753, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP=var2659, $r1=var3779, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr=var3761, $r2=var1718, org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy=var589, r27=var527, java.util.List=var3327, $r3=var5, $r23=var262, $z4=var584, org.apache.poi.xwpf.model.XWPFCommentsDecorator=var876, $r4=var47, org.apache.poi.xwpf.model.XWPFParagraphDecorator=var1872, null=var2611, null_type=var1824, r30=var66, $i0=var2842, $r9=var1785}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r5 := @this: org.apache.poi.xwpf.extractor.XWPFWordExtractor;	r6 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: org.apache.poi.xwpf.usermodel.XWPFParagraph;	r26 = null;	$r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP getCTP()>();	$r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr getPPr()>();	if $r2 == null goto r27 = null;	r27 = null;	if r26 == null goto $r3 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List getIRuns()>();	$r3 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List getIRuns()>();	$r23 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z4 = interfaceinvoke $r23.<java.util.Iterator: boolean hasNext()>();	if $z4 == 0 goto $r4 = new org.apache.poi.xwpf.model.XWPFCommentsDecorator;	$r4 = new org.apache.poi.xwpf.model.XWPFCommentsDecorator;	specialinvoke $r4.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: void <init>(org.apache.poi.xwpf.usermodel.XWPFParagraph,org.apache.poi.xwpf.model.XWPFParagraphDecorator)>(r0, null);	r30 = virtualinvoke $r4.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: java.lang.String getCommentText()>();	$i0 = virtualinvoke r30.<java.lang.String: int length()>();	if $i0 <= 0 goto $r9 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.String getFootnoteText()>();	$r9 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.String getFootnoteText()>();	if $r9 == null goto (branch);	if r26 == null goto return;	return
;block_num 8