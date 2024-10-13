(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var832 0)
(declare-sort var1925 0)
(declare-sort var192 0)
(declare-sort var1795 0)
(declare-sort var3088 0)
(declare-sort var2289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1795) void)
(declare-fun cast-from-var832-to-var1795 (var832) var1795)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun text/1416992618 (var832) String)
(declare-fun var3088-init () var3088)
(declare-fun <init>/-325640736 (var3088) void)
(declare-fun cast-from-var3088-to-var2289 (var3088) var2289)
(declare-fun tableRows/1416992618 (var832) var2289)
(declare-fun part/1416992618 (var832) var192)
(declare-fun ctTbl/1416992618 (var832) var1925)
(declare-fun var1925_getTrList/-1747168 (var1925) var2289)
(declare-fun var2289_iterator/-912451715 (var2289) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var832 var832)
(declare-const null-var1925 var1925)
(declare-const null-var192 var192)
(declare-const null-Bool Bool)
(declare-const var1225 var832) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFTable 
(assert (not (= var1225 null-var832)))
(declare-const var2044 var1925) ; Statement: r4 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl 
(assert (not (= var2044 null-var1925)))
(declare-const var110 var192) ; Statement: r3 := @parameter1: org.apache.poi.xwpf.usermodel.IBody 
(assert (not (= var110 null-var192)))
(declare-const var2701 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2701 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var832-to-var1795 var1225))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1225!1 var832)
(define-const var1732 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1732 64)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var1732!1 String)
(declare-const var163 Int)
(declare-const var1225!2 var832)
(assert (not (= var1225!2 null-var832)))
(assert (= (text/1416992618 var1225!2) var1732!1)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFTable: java.lang.StringBuilder text> = $r1 
(define-const var3699 var3088 var3088-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3699)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var3699!1 var3088)
(declare-const var1225!3 var832)
(assert (not (= var1225!3 null-var832)))
(assert (= (tableRows/1416992618 var1225!3) (cast-from-var3088-to-var2289 var3699!1))) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFTable: java.util.List tableRows> = $r2 
(declare-const var1225!4 var832)
(assert (not (= var1225!4 null-var832)))
(assert (= (part/1416992618 var1225!4) var110)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFTable: org.apache.poi.xwpf.usermodel.IBody part> = r3 
(declare-const var1225!5 var832)
(assert (not (= var1225!5 null-var832)))
(assert (= (ctTbl/1416992618 var1225!5) var2044)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFTable: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl ctTbl> = r4 
 ; Statement: if z0 == 0 goto $r22 = interfaceinvoke r4.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl: java.util.List getTrList()>() 
(assert (= (ite var2701 1 0) 0)) ; Cond: z0 == 0 
(define-const var1750 var2289 (var1925_getTrList/-1747168 var2044)) ; Statement: $r22 = interfaceinvoke r4.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl: java.util.List getTrList()>() 
(define-const var2310 Iterator (var2289_iterator/-912451715 var1750)) ; Statement: $r23 = interfaceinvoke $r22.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2633 Bool (Iterator_hasNext/-1669924200 var2310)) ; Statement: $z3 = interfaceinvoke $r23.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var2633 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var832-to-var1795=([org.apache.poi.xwpf.usermodel.XWPFTable], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), text/1416992618=([org.apache.poi.xwpf.usermodel.XWPFTable], java.lang.StringBuilder), var3088-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3088-to-var2289=([java.util.ArrayList], java.util.List), tableRows/1416992618=([org.apache.poi.xwpf.usermodel.XWPFTable], java.util.List), part/1416992618=([org.apache.poi.xwpf.usermodel.XWPFTable], org.apache.poi.xwpf.usermodel.IBody), ctTbl/1416992618=([org.apache.poi.xwpf.usermodel.XWPFTable], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl), var1925_getTrList/-1747168=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl], java.util.List), var2289_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var832=org.apache.poi.xwpf.usermodel.XWPFTable, var1225=r0, var1925=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl, var2044=r4, var192=org.apache.poi.xwpf.usermodel.IBody, var110=r3, var2701=z0, var1795=java.lang.Object, var1732=$r1, var163=64, var3088=java.util.ArrayList, var3699=$r2, var2289=java.util.List, var1750=$r22, var2310=$r23, var2633=$z3}
; {org.apache.poi.xwpf.usermodel.XWPFTable=var832, r0=var1225, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl=var1925, r4=var2044, org.apache.poi.xwpf.usermodel.IBody=var192, r3=var110, z0=var2701, java.lang.Object=var1795, $r1=var1732, 64=var163, java.util.ArrayList=var3088, $r2=var3699, java.util.List=var2289, $r22=var1750, $r23=var2310, $z3=var2633}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFTable;	r4 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;	r3 := @parameter1: org.apache.poi.xwpf.usermodel.IBody;	z0 := @parameter2: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(64);	r0.<org.apache.poi.xwpf.usermodel.XWPFTable: java.lang.StringBuilder text> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<org.apache.poi.xwpf.usermodel.XWPFTable: java.util.List tableRows> = $r2;	r0.<org.apache.poi.xwpf.usermodel.XWPFTable: org.apache.poi.xwpf.usermodel.IBody part> = r3;	r0.<org.apache.poi.xwpf.usermodel.XWPFTable: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl ctTbl> = r4;	if z0 == 0 goto $r22 = interfaceinvoke r4.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl: java.util.List getTrList()>();	$r22 = interfaceinvoke r4.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl: java.util.List getTrList()>();	$r23 = interfaceinvoke $r22.<java.util.List: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r23.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto return;	return
;block_num 4