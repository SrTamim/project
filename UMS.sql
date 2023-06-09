PGDMP                         {            UMS    15.2    15.2 v    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    UMS    DATABASE     �   CREATE DATABASE "UMS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "UMS";
                postgres    false            �            1259    27188    RequestRoom    TABLE       CREATE TABLE public."RequestRoom" (
    id integer NOT NULL,
    "Fid" integer NOT NULL,
    room character varying NOT NULL,
    reason character varying NOT NULL,
    date timestamp without time zone NOT NULL,
    "time" timestamp without time zone NOT NULL
);
 !   DROP TABLE public."RequestRoom";
       public         heap    postgres    false            �            1259    27187    RequestRoom_id_seq    SEQUENCE     �   CREATE SEQUENCE public."RequestRoom_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."RequestRoom_id_seq";
       public          postgres    false    240            �           0    0    RequestRoom_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."RequestRoom_id_seq" OWNED BY public."RequestRoom".id;
          public          postgres    false    239            �            1259    27197    UserInfo    TABLE     �   CREATE TABLE public."UserInfo" (
    "Uid" integer NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL
);
    DROP TABLE public."UserInfo";
       public         heap    postgres    false            �            1259    27196    UserInfo_Uid_seq    SEQUENCE     �   CREATE SEQUENCE public."UserInfo_Uid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."UserInfo_Uid_seq";
       public          postgres    false    242            �           0    0    UserInfo_Uid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."UserInfo_Uid_seq" OWNED BY public."UserInfo"."Uid";
          public          postgres    false    241            �            1259    27075    admin    TABLE     �   CREATE TABLE public.admin (
    id integer NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    pass character varying NOT NULL,
    address character varying NOT NULL,
    filename character varying NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    27074    admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.admin_id_seq;
       public          postgres    false    232            �           0    0    admin_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;
          public          postgres    false    231            �            1259    16427    assignmentInfo    TABLE       CREATE TABLE public."assignmentInfo" (
    id integer NOT NULL,
    "courseId" integer NOT NULL,
    subject character varying NOT NULL,
    "Details" character varying NOT NULL,
    created_date timestamp without time zone NOT NULL,
    due_date timestamp without time zone NOT NULL
);
 $   DROP TABLE public."assignmentInfo";
       public         heap    postgres    false            �            1259    16426    assignmentInfo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."assignmentInfo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."assignmentInfo_id_seq";
       public          postgres    false    215            �           0    0    assignmentInfo_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."assignmentInfo_id_seq" OWNED BY public."assignmentInfo".id;
          public          postgres    false    214            �            1259    26813    course    TABLE     �   CREATE TABLE public.course (
    "Cid" integer NOT NULL,
    "Cname" character varying NOT NULL,
    credit character varying NOT NULL,
    room character varying NOT NULL,
    "time" character varying NOT NULL
);
    DROP TABLE public.course;
       public         heap    postgres    false            �            1259    26812    course_Cid_seq    SEQUENCE     �   CREATE SEQUENCE public."course_Cid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."course_Cid_seq";
       public          postgres    false    221            �           0    0    course_Cid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."course_Cid_seq" OWNED BY public.course."Cid";
          public          postgres    false    220            �            1259    27165    faculty    TABLE     V  CREATE TABLE public.faculty (
    "Fid" integer NOT NULL,
    "Fidd" character varying NOT NULL,
    "Fname" character varying NOT NULL,
    "Fprogram" character varying NOT NULL,
    "Fdep" character varying NOT NULL,
    "Faddress" character varying NOT NULL,
    "Fnum" character varying NOT NULL,
    "Fdob" character varying NOT NULL
);
    DROP TABLE public.faculty;
       public         heap    postgres    false            �            1259    16445    facultyNotice    TABLE     �   CREATE TABLE public."facultyNotice" (
    id integer NOT NULL,
    subject character varying NOT NULL,
    "Details" character varying NOT NULL
);
 #   DROP TABLE public."facultyNotice";
       public         heap    postgres    false            �            1259    16444    facultyNotice_id_seq    SEQUENCE     �   CREATE SEQUENCE public."facultyNotice_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."facultyNotice_id_seq";
       public          postgres    false    217            �           0    0    facultyNotice_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."facultyNotice_id_seq" OWNED BY public."facultyNotice".id;
          public          postgres    false    216            �            1259    27164    faculty_Fid_seq    SEQUENCE     �   CREATE SEQUENCE public."faculty_Fid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."faculty_Fid_seq";
       public          postgres    false    236            �           0    0    faculty_Fid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."faculty_Fid_seq" OWNED BY public.faculty."Fid";
          public          postgres    false    235            �            1259    27035    facultyinfo    TABLE     �  CREATE TABLE public.facultyinfo (
    "Fid" integer NOT NULL,
    "Fidd" integer NOT NULL,
    "Fname" character varying NOT NULL,
    "Fprogram" character varying NOT NULL,
    "Fdep" character varying NOT NULL,
    "Faddress" character varying NOT NULL,
    "Fnum" integer NOT NULL,
    dob timestamp without time zone NOT NULL,
    "Fsal" integer NOT NULL,
    "facultyNoticesId" integer
);
    DROP TABLE public.facultyinfo;
       public         heap    postgres    false            �            1259    27205    facultyinfo_Fid_seq    SEQUENCE     �   CREATE SEQUENCE public."facultyinfo_Fid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."facultyinfo_Fid_seq";
       public          postgres    false    228            �           0    0    facultyinfo_Fid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."facultyinfo_Fid_seq" OWNED BY public.facultyinfo."Fid";
          public          postgres    false    243            �            1259    27123 
   facultysal    TABLE     �   CREATE TABLE public.facultysal (
    "Fid" integer NOT NULL,
    month character varying NOT NULL,
    year character varying NOT NULL,
    amount character varying NOT NULL
);
    DROP TABLE public.facultysal;
       public         heap    postgres    false            �            1259    27122    facultysal_Fid_seq    SEQUENCE     �   CREATE SEQUENCE public."facultysal_Fid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."facultysal_Fid_seq";
       public          postgres    false    234            �           0    0    facultysal_Fid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."facultysal_Fid_seq" OWNED BY public.facultysal."Fid";
          public          postgres    false    233            �            1259    27179 
   fileuplode    TABLE     f   CREATE TABLE public.fileuplode (
    fileid integer NOT NULL,
    files character varying NOT NULL
);
    DROP TABLE public.fileuplode;
       public         heap    postgres    false            �            1259    27178    fileuplode_fileid_seq    SEQUENCE     �   CREATE SEQUENCE public.fileuplode_fileid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.fileuplode_fileid_seq;
       public          postgres    false    238            �           0    0    fileuplode_fileid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.fileuplode_fileid_seq OWNED BY public.fileuplode.fileid;
          public          postgres    false    237            �            1259    26994    manager    TABLE     �   CREATE TABLE public.manager (
    id integer NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    pass character varying NOT NULL,
    address character varying NOT NULL,
    "adminId" integer
);
    DROP TABLE public.manager;
       public         heap    postgres    false            �            1259    26993    manager_id_seq    SEQUENCE     �   CREATE SEQUENCE public.manager_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.manager_id_seq;
       public          postgres    false    227            �           0    0    manager_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.manager_id_seq OWNED BY public.manager.id;
          public          postgres    false    226            �            1259    26822    notice    TABLE     �   CREATE TABLE public.notice (
    "Nid" integer NOT NULL,
    "Nsub" character varying NOT NULL,
    "Ndetails" character varying NOT NULL
);
    DROP TABLE public.notice;
       public         heap    postgres    false            �            1259    26821    notice_Nid_seq    SEQUENCE     �   CREATE SEQUENCE public."notice_Nid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."notice_Nid_seq";
       public          postgres    false    223            �           0    0    notice_Nid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."notice_Nid_seq" OWNED BY public.notice."Nid";
          public          postgres    false    222            �            1259    27286    officer    TABLE     +  CREATE TABLE public.officer (
    "Oid" integer NOT NULL,
    "Oidd" character varying NOT NULL,
    "Oname" character varying NOT NULL,
    "Odep" character varying NOT NULL,
    "Oaddress" character varying NOT NULL,
    "Onum" character varying NOT NULL,
    "Odob" character varying NOT NULL
);
    DROP TABLE public.officer;
       public         heap    postgres    false            �            1259    27285    officer_Oid_seq    SEQUENCE     �   CREATE SEQUENCE public."officer_Oid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."officer_Oid_seq";
       public          postgres    false    245            �           0    0    officer_Oid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."officer_Oid_seq" OWNED BY public.officer."Oid";
          public          postgres    false    244            �            1259    27045 
   officersal    TABLE     �   CREATE TABLE public.officersal (
    "Osid" integer NOT NULL,
    "Osfid" integer NOT NULL,
    month character varying NOT NULL,
    year character varying NOT NULL,
    amount character varying NOT NULL
);
    DROP TABLE public.officersal;
       public         heap    postgres    false            �            1259    27044    officersal_Osid_seq    SEQUENCE     �   CREATE SEQUENCE public."officersal_Osid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."officersal_Osid_seq";
       public          postgres    false    230            �           0    0    officersal_Osid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."officersal_Osid_seq" OWNED BY public.officersal."Osid";
          public          postgres    false    229            �            1259    26876    student    TABLE     L  CREATE TABLE public.student (
    "Sid" integer NOT NULL,
    "Sidd" integer NOT NULL,
    "Sname" character varying NOT NULL,
    "Sprogram" character varying NOT NULL,
    "Sdep" character varying NOT NULL,
    "Saddress" character varying NOT NULL,
    "Snum" character varying NOT NULL,
    "Sdob" character varying NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    26875    student_Sid_seq    SEQUENCE     �   CREATE SEQUENCE public."student_Sid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."student_Sid_seq";
       public          postgres    false    225            �           0    0    student_Sid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."student_Sid_seq" OWNED BY public.student."Sid";
          public          postgres    false    224            �            1259    16454    studentgradeInfo    TABLE     �   CREATE TABLE public."studentgradeInfo" (
    id integer NOT NULL,
    "studentId" integer NOT NULL,
    "curseId" integer NOT NULL,
    subject character varying NOT NULL,
    grade character varying NOT NULL
);
 &   DROP TABLE public."studentgradeInfo";
       public         heap    postgres    false            �            1259    16453    studentgradeInfo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."studentgradeInfo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."studentgradeInfo_id_seq";
       public          postgres    false    219            �           0    0    studentgradeInfo_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."studentgradeInfo_id_seq" OWNED BY public."studentgradeInfo".id;
          public          postgres    false    218            �           2604    27191    RequestRoom id    DEFAULT     t   ALTER TABLE ONLY public."RequestRoom" ALTER COLUMN id SET DEFAULT nextval('public."RequestRoom_id_seq"'::regclass);
 ?   ALTER TABLE public."RequestRoom" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    27200    UserInfo Uid    DEFAULT     r   ALTER TABLE ONLY public."UserInfo" ALTER COLUMN "Uid" SET DEFAULT nextval('public."UserInfo_Uid_seq"'::regclass);
 ?   ALTER TABLE public."UserInfo" ALTER COLUMN "Uid" DROP DEFAULT;
       public          postgres    false    242    241    242            �           2604    27078    admin id    DEFAULT     d   ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);
 7   ALTER TABLE public.admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    16430    assignmentInfo id    DEFAULT     z   ALTER TABLE ONLY public."assignmentInfo" ALTER COLUMN id SET DEFAULT nextval('public."assignmentInfo_id_seq"'::regclass);
 B   ALTER TABLE public."assignmentInfo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    26816 
   course Cid    DEFAULT     l   ALTER TABLE ONLY public.course ALTER COLUMN "Cid" SET DEFAULT nextval('public."course_Cid_seq"'::regclass);
 ;   ALTER TABLE public.course ALTER COLUMN "Cid" DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    27168    faculty Fid    DEFAULT     n   ALTER TABLE ONLY public.faculty ALTER COLUMN "Fid" SET DEFAULT nextval('public."faculty_Fid_seq"'::regclass);
 <   ALTER TABLE public.faculty ALTER COLUMN "Fid" DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    16448    facultyNotice id    DEFAULT     x   ALTER TABLE ONLY public."facultyNotice" ALTER COLUMN id SET DEFAULT nextval('public."facultyNotice_id_seq"'::regclass);
 A   ALTER TABLE public."facultyNotice" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    27206    facultyinfo Fid    DEFAULT     v   ALTER TABLE ONLY public.facultyinfo ALTER COLUMN "Fid" SET DEFAULT nextval('public."facultyinfo_Fid_seq"'::regclass);
 @   ALTER TABLE public.facultyinfo ALTER COLUMN "Fid" DROP DEFAULT;
       public          postgres    false    243    228            �           2604    27126    facultysal Fid    DEFAULT     t   ALTER TABLE ONLY public.facultysal ALTER COLUMN "Fid" SET DEFAULT nextval('public."facultysal_Fid_seq"'::regclass);
 ?   ALTER TABLE public.facultysal ALTER COLUMN "Fid" DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    27182    fileuplode fileid    DEFAULT     v   ALTER TABLE ONLY public.fileuplode ALTER COLUMN fileid SET DEFAULT nextval('public.fileuplode_fileid_seq'::regclass);
 @   ALTER TABLE public.fileuplode ALTER COLUMN fileid DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    26997 
   manager id    DEFAULT     h   ALTER TABLE ONLY public.manager ALTER COLUMN id SET DEFAULT nextval('public.manager_id_seq'::regclass);
 9   ALTER TABLE public.manager ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    26825 
   notice Nid    DEFAULT     l   ALTER TABLE ONLY public.notice ALTER COLUMN "Nid" SET DEFAULT nextval('public."notice_Nid_seq"'::regclass);
 ;   ALTER TABLE public.notice ALTER COLUMN "Nid" DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    27289    officer Oid    DEFAULT     n   ALTER TABLE ONLY public.officer ALTER COLUMN "Oid" SET DEFAULT nextval('public."officer_Oid_seq"'::regclass);
 <   ALTER TABLE public.officer ALTER COLUMN "Oid" DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    27048    officersal Osid    DEFAULT     v   ALTER TABLE ONLY public.officersal ALTER COLUMN "Osid" SET DEFAULT nextval('public."officersal_Osid_seq"'::regclass);
 @   ALTER TABLE public.officersal ALTER COLUMN "Osid" DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    26879    student Sid    DEFAULT     n   ALTER TABLE ONLY public.student ALTER COLUMN "Sid" SET DEFAULT nextval('public."student_Sid_seq"'::regclass);
 <   ALTER TABLE public.student ALTER COLUMN "Sid" DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16457    studentgradeInfo id    DEFAULT     ~   ALTER TABLE ONLY public."studentgradeInfo" ALTER COLUMN id SET DEFAULT nextval('public."studentgradeInfo_id_seq"'::regclass);
 D   ALTER TABLE public."studentgradeInfo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �          0    27188    RequestRoom 
   TABLE DATA           N   COPY public."RequestRoom" (id, "Fid", room, reason, date, "time") FROM stdin;
    public          postgres    false    240   p�       �          0    27197    UserInfo 
   TABLE DATA           <   COPY public."UserInfo" ("Uid", email, password) FROM stdin;
    public          postgres    false    242   ��       �          0    27075    admin 
   TABLE DATA           I   COPY public.admin (id, name, email, pass, address, filename) FROM stdin;
    public          postgres    false    232   ��       q          0    16427    assignmentInfo 
   TABLE DATA           f   COPY public."assignmentInfo" (id, "courseId", subject, "Details", created_date, due_date) FROM stdin;
    public          postgres    false    215   ��       w          0    26813    course 
   TABLE DATA           F   COPY public.course ("Cid", "Cname", credit, room, "time") FROM stdin;
    public          postgres    false    221   ݌       �          0    27165    faculty 
   TABLE DATA           i   COPY public.faculty ("Fid", "Fidd", "Fname", "Fprogram", "Fdep", "Faddress", "Fnum", "Fdob") FROM stdin;
    public          postgres    false    236   B�       s          0    16445    facultyNotice 
   TABLE DATA           A   COPY public."facultyNotice" (id, subject, "Details") FROM stdin;
    public          postgres    false    217   ��       ~          0    27035    facultyinfo 
   TABLE DATA           �   COPY public.facultyinfo ("Fid", "Fidd", "Fname", "Fprogram", "Fdep", "Faddress", "Fnum", dob, "Fsal", "facultyNoticesId") FROM stdin;
    public          postgres    false    228   ʍ       �          0    27123 
   facultysal 
   TABLE DATA           @   COPY public.facultysal ("Fid", month, year, amount) FROM stdin;
    public          postgres    false    234   �       �          0    27179 
   fileuplode 
   TABLE DATA           3   COPY public.fileuplode (fileid, files) FROM stdin;
    public          postgres    false    238   %�       }          0    26994    manager 
   TABLE DATA           L   COPY public.manager (id, name, email, pass, address, "adminId") FROM stdin;
    public          postgres    false    227   B�       y          0    26822    notice 
   TABLE DATA           ;   COPY public.notice ("Nid", "Nsub", "Ndetails") FROM stdin;
    public          postgres    false    223   _�       �          0    27286    officer 
   TABLE DATA           ]   COPY public.officer ("Oid", "Oidd", "Oname", "Odep", "Oaddress", "Onum", "Odob") FROM stdin;
    public          postgres    false    245   ��       �          0    27045 
   officersal 
   TABLE DATA           J   COPY public.officersal ("Osid", "Osfid", month, year, amount) FROM stdin;
    public          postgres    false    230   �       {          0    26876    student 
   TABLE DATA           i   COPY public.student ("Sid", "Sidd", "Sname", "Sprogram", "Sdep", "Saddress", "Snum", "Sdob") FROM stdin;
    public          postgres    false    225   8�       u          0    16454    studentgradeInfo 
   TABLE DATA           X   COPY public."studentgradeInfo" (id, "studentId", "curseId", subject, grade) FROM stdin;
    public          postgres    false    219   ��       �           0    0    RequestRoom_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."RequestRoom_id_seq"', 1, false);
          public          postgres    false    239            �           0    0    UserInfo_Uid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."UserInfo_Uid_seq"', 1, false);
          public          postgres    false    241            �           0    0    admin_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.admin_id_seq', 15, true);
          public          postgres    false    231            �           0    0    assignmentInfo_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."assignmentInfo_id_seq"', 1, false);
          public          postgres    false    214            �           0    0    course_Cid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."course_Cid_seq"', 5, true);
          public          postgres    false    220            �           0    0    facultyNotice_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."facultyNotice_id_seq"', 1, false);
          public          postgres    false    216            �           0    0    faculty_Fid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."faculty_Fid_seq"', 3, true);
          public          postgres    false    235            �           0    0    facultyinfo_Fid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."facultyinfo_Fid_seq"', 1, false);
          public          postgres    false    243            �           0    0    facultysal_Fid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."facultysal_Fid_seq"', 2, true);
          public          postgres    false    233            �           0    0    fileuplode_fileid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.fileuplode_fileid_seq', 1, false);
          public          postgres    false    237            �           0    0    manager_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.manager_id_seq', 1, false);
          public          postgres    false    226            �           0    0    notice_Nid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."notice_Nid_seq"', 4, true);
          public          postgres    false    222            �           0    0    officer_Oid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."officer_Oid_seq"', 1, true);
          public          postgres    false    244            �           0    0    officersal_Osid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."officersal_Osid_seq"', 1, true);
          public          postgres    false    229            �           0    0    student_Sid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."student_Sid_seq"', 8, true);
          public          postgres    false    224            �           0    0    studentgradeInfo_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."studentgradeInfo_id_seq"', 1, false);
          public          postgres    false    218            �           2606    27195 *   RequestRoom PK_1ec552edc920cc6a758611f39e9 
   CONSTRAINT     l   ALTER TABLE ONLY public."RequestRoom"
    ADD CONSTRAINT "PK_1ec552edc920cc6a758611f39e9" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."RequestRoom" DROP CONSTRAINT "PK_1ec552edc920cc6a758611f39e9";
       public            postgres    false    240            �           2606    27186 )   fileuplode PK_2a35e7b55214179a88ebe0dab77 
   CONSTRAINT     m   ALTER TABLE ONLY public.fileuplode
    ADD CONSTRAINT "PK_2a35e7b55214179a88ebe0dab77" PRIMARY KEY (fileid);
 U   ALTER TABLE ONLY public.fileuplode DROP CONSTRAINT "PK_2a35e7b55214179a88ebe0dab77";
       public            postgres    false    238            �           2606    27211 *   facultyinfo PK_3ecfb8e5a9dab6672e656865186 
   CONSTRAINT     m   ALTER TABLE ONLY public.facultyinfo
    ADD CONSTRAINT "PK_3ecfb8e5a9dab6672e656865186" PRIMARY KEY ("Fid");
 V   ALTER TABLE ONLY public.facultyinfo DROP CONSTRAINT "PK_3ecfb8e5a9dab6672e656865186";
       public            postgres    false    228            �           2606    26829 %   notice PK_5dbdc615584d92157f50a48c2dd 
   CONSTRAINT     h   ALTER TABLE ONLY public.notice
    ADD CONSTRAINT "PK_5dbdc615584d92157f50a48c2dd" PRIMARY KEY ("Nid");
 Q   ALTER TABLE ONLY public.notice DROP CONSTRAINT "PK_5dbdc615584d92157f50a48c2dd";
       public            postgres    false    223            �           2606    27130 )   facultysal PK_650441ca4392eee6c1c4bd3b0f6 
   CONSTRAINT     l   ALTER TABLE ONLY public.facultysal
    ADD CONSTRAINT "PK_650441ca4392eee6c1c4bd3b0f6" PRIMARY KEY ("Fid");
 U   ALTER TABLE ONLY public.facultysal DROP CONSTRAINT "PK_650441ca4392eee6c1c4bd3b0f6";
       public            postgres    false    234            �           2606    26820 %   course PK_74c81faab82cd8e0a56ad4d4494 
   CONSTRAINT     h   ALTER TABLE ONLY public.course
    ADD CONSTRAINT "PK_74c81faab82cd8e0a56ad4d4494" PRIMARY KEY ("Cid");
 Q   ALTER TABLE ONLY public.course DROP CONSTRAINT "PK_74c81faab82cd8e0a56ad4d4494";
       public            postgres    false    221            �           2606    16434 -   assignmentInfo PK_7fefe1af3c38f4951037fc89484 
   CONSTRAINT     o   ALTER TABLE ONLY public."assignmentInfo"
    ADD CONSTRAINT "PK_7fefe1af3c38f4951037fc89484" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public."assignmentInfo" DROP CONSTRAINT "PK_7fefe1af3c38f4951037fc89484";
       public            postgres    false    215            �           2606    16452 ,   facultyNotice PK_8ac3edc41c03bc6f4dcceb31e0a 
   CONSTRAINT     n   ALTER TABLE ONLY public."facultyNotice"
    ADD CONSTRAINT "PK_8ac3edc41c03bc6f4dcceb31e0a" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."facultyNotice" DROP CONSTRAINT "PK_8ac3edc41c03bc6f4dcceb31e0a";
       public            postgres    false    217            �           2606    27172 &   faculty PK_8ffa8c6000cadc837c200c6fe2c 
   CONSTRAINT     i   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT "PK_8ffa8c6000cadc837c200c6fe2c" PRIMARY KEY ("Fid");
 R   ALTER TABLE ONLY public.faculty DROP CONSTRAINT "PK_8ffa8c6000cadc837c200c6fe2c";
       public            postgres    false    236            �           2606    27204 '   UserInfo PK_b2b4a2dfce6cb095c1c8e61db7a 
   CONSTRAINT     l   ALTER TABLE ONLY public."UserInfo"
    ADD CONSTRAINT "PK_b2b4a2dfce6cb095c1c8e61db7a" PRIMARY KEY ("Uid");
 U   ALTER TABLE ONLY public."UserInfo" DROP CONSTRAINT "PK_b2b4a2dfce6cb095c1c8e61db7a";
       public            postgres    false    242            �           2606    27001 &   manager PK_b3ac840005ee4ed76a7f1c51d01 
   CONSTRAINT     f   ALTER TABLE ONLY public.manager
    ADD CONSTRAINT "PK_b3ac840005ee4ed76a7f1c51d01" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.manager DROP CONSTRAINT "PK_b3ac840005ee4ed76a7f1c51d01";
       public            postgres    false    227            �           2606    27052 )   officersal PK_cc469a16834c5384563b37c0ded 
   CONSTRAINT     m   ALTER TABLE ONLY public.officersal
    ADD CONSTRAINT "PK_cc469a16834c5384563b37c0ded" PRIMARY KEY ("Osid");
 U   ALTER TABLE ONLY public.officersal DROP CONSTRAINT "PK_cc469a16834c5384563b37c0ded";
       public            postgres    false    230            �           2606    16461 /   studentgradeInfo PK_cf971d98a6958460c578f3f0230 
   CONSTRAINT     q   ALTER TABLE ONLY public."studentgradeInfo"
    ADD CONSTRAINT "PK_cf971d98a6958460c578f3f0230" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public."studentgradeInfo" DROP CONSTRAINT "PK_cf971d98a6958460c578f3f0230";
       public            postgres    false    219            �           2606    26883 &   student PK_de23d3f97cf83a6cc3fac7745f2 
   CONSTRAINT     i   ALTER TABLE ONLY public.student
    ADD CONSTRAINT "PK_de23d3f97cf83a6cc3fac7745f2" PRIMARY KEY ("Sid");
 R   ALTER TABLE ONLY public.student DROP CONSTRAINT "PK_de23d3f97cf83a6cc3fac7745f2";
       public            postgres    false    225            �           2606    27082 $   admin PK_e032310bcef831fb83101899b10 
   CONSTRAINT     d   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT "PK_e032310bcef831fb83101899b10" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.admin DROP CONSTRAINT "PK_e032310bcef831fb83101899b10";
       public            postgres    false    232            �           2606    27293 &   officer PK_ebe0ca7a86b6320ca1cb7233dd0 
   CONSTRAINT     i   ALTER TABLE ONLY public.officer
    ADD CONSTRAINT "PK_ebe0ca7a86b6320ca1cb7233dd0" PRIMARY KEY ("Oid");
 R   ALTER TABLE ONLY public.officer DROP CONSTRAINT "PK_ebe0ca7a86b6320ca1cb7233dd0";
       public            postgres    false    245            �           2606    27280 &   manager FK_a846a8cf53688fcbf14a5c653fc    FK CONSTRAINT     �   ALTER TABLE ONLY public.manager
    ADD CONSTRAINT "FK_a846a8cf53688fcbf14a5c653fc" FOREIGN KEY ("adminId") REFERENCES public.admin(id);
 R   ALTER TABLE ONLY public.manager DROP CONSTRAINT "FK_a846a8cf53688fcbf14a5c653fc";
       public          postgres    false    3283    232    227            �           2606    27275 *   facultyinfo FK_f87a3734b9710ca055f65413bdd    FK CONSTRAINT     �   ALTER TABLE ONLY public.facultyinfo
    ADD CONSTRAINT "FK_f87a3734b9710ca055f65413bdd" FOREIGN KEY ("facultyNoticesId") REFERENCES public."facultyNotice"(id);
 V   ALTER TABLE ONLY public.facultyinfo DROP CONSTRAINT "FK_f87a3734b9710ca055f65413bdd";
       public          postgres    false    217    3267    228            �      x������ � �      �      x������ � �      �     x���I��J���+<�q���n\PD�]
)6ٺ ��n;Ɖ1b�_ETF�%�/32!C��u��O��8eOEƼ@�/��yt���h�Mo�䇶s'��Π=�����I����9.�LӲ��g8Q�Y� �%cZ��kZ���aOdj���G|�J������$����+�T�t-O�*�K;#mfE~�%����~�d"$��;�{��_���U��.
Izr�{��~�q����r��Ý��'�T��r.�59�sUїW�w�JiHY�F�����qc�^T�U���
ZG�UL	�p��o~Z��{g/QA�%[�aO��M�s�zD�xS��E�M�U�]({n'��0*�6��BZ�?����O!��Bnd����<��.l��v�w��"8_���q��Y���:�����L�/$I��B`����F����y�������yxa�Jr-��]u��6Ɗ.̍{K��e��j�}#�s#�lUsn2��D�l�4>=k�ăus(��5�I�[q79QODD7���U�
8l���k�h���3��P��H���2�4��kҿ�=yKcq]�� ��V	��hb}��	��6;�
šY2�o��&�M�o�C���ƿX��,�O� �zU���Y���M��d����za}ގS?5=7X��
2Y2H���iڷ���Tu߈����sP��8#N`���g�`�n�|KJ�8�SN���F8���Ʈ�eY�y���6�0��S�A����JRx@��/����*&��      q      x������ � �      w   U   x�3�tL)OM�4�t�34��44�26Pp��2��rs���rZ��M8sK2 �FƜ�F��\����!`!KKKNC� _�=... ���      �   [   x�M�1� �����wh��¡$bs�Q���6C�{�Ƥ���z��J`r�bp��X؉�0:��K.А%�
�k����v�Sͭ1�[�      s      x������ � �      ~      x������ � �      �   .   x�3��M,I��4202�000�2��J�+M,����Dc���� �	�      �      x������ � �      }      x������ � �      y   =   x�3�,(�J��H,(�TH�LJ���2�"f�����隙��Z���QZ��P��Z������ ��      �   K   x����  �s;
~w�M8(���Q1��;qE5�4H�����'��ɭZ
q^�m?<�w*�"���d      �   !   x�3�4��M,I��4202�000������ Da�      {   I   x�3�4�414375�,I����N�L�KN�tv���,*(-�4047�44216�4QHKM�2Fh*� ZW� p=u      u      x������ � �     