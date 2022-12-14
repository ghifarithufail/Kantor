PGDMP     5    .                z         
   e-commerce    14.5    14.5 2    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    16394 
   e-commerce    DATABASE     o   CREATE DATABASE "e-commerce" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE "e-commerce";
                postgres    false            ?            1259    16496 
   categories    TABLE     s   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(230),
    description text
);
    DROP TABLE public.categories;
       public         heap    postgres    false            ?            1259    16495    categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    216            (           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    215            ?            1259    16524    item    TABLE     ?   CREATE TABLE public.item (
    id integer NOT NULL,
    nama character(30),
    jumlah integer,
    harga character varying(30)
);
    DROP TABLE public.item;
       public         heap    postgres    false            ?            1259    16523    item_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.item_id_seq;
       public          postgres    false    220            )           0    0    item_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;
          public          postgres    false    219            ?            1259    16515    orders    TABLE     ?   CREATE TABLE public.orders (
    id integer NOT NULL,
    nama text,
    alamat character varying(100),
    kode_pos integer,
    no_hp integer,
    id_category integer,
    status character(30)
);
    DROP TABLE public.orders;
       public         heap    postgres    false            ?            1259    16514    order_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.order_id_seq;
       public          postgres    false    218            *           0    0    order_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.order_id_seq OWNED BY public.orders.id;
          public          postgres    false    217            ?            1259    16431    pinjaman    TABLE     ?   CREATE TABLE public.pinjaman (
    id integer NOT NULL,
    nama character(20),
    norek integer,
    alamat character varying(30),
    jmlh_pinjaman integer,
    no_telpon integer
);
    DROP TABLE public.pinjaman;
       public         heap    postgres    false            ?            1259    16430    pinjaman_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pinjaman_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pinjaman_id_seq;
       public          postgres    false    210            +           0    0    pinjaman_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pinjaman_id_seq OWNED BY public.pinjaman.id;
          public          postgres    false    209            ?            1259    16445    todo    TABLE     ?   CREATE TABLE public.todo (
    id integer NOT NULL,
    title character varying(230),
    description text,
    user_id integer,
    category_id integer
);
    DROP TABLE public.todo;
       public         heap    postgres    false            ?            1259    16444    todo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.todo_id_seq;
       public          postgres    false    212            ,           0    0    todo_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.todo_id_seq OWNED BY public.todo.id;
          public          postgres    false    211            ?            1259    16487    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(200),
    email character varying(200),
    password text
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16486    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    214            -           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    213            x           2604    16499    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            z           2604    16527    item id    DEFAULT     b   ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);
 6   ALTER TABLE public.item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            y           2604    16518 	   orders id    DEFAULT     e   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            u           2604    16434    pinjaman id    DEFAULT     j   ALTER TABLE ONLY public.pinjaman ALTER COLUMN id SET DEFAULT nextval('public.pinjaman_id_seq'::regclass);
 :   ALTER TABLE public.pinjaman ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            v           2604    16448    todo id    DEFAULT     b   ALTER TABLE ONLY public.todo ALTER COLUMN id SET DEFAULT nextval('public.todo_id_seq'::regclass);
 6   ALTER TABLE public.todo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            w           2604    16490    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214                      0    16496 
   categories 
   TABLE DATA           ;   COPY public.categories (id, name, description) FROM stdin;
    public          postgres    false    216   y4       !          0    16524    item 
   TABLE DATA           7   COPY public.item (id, nama, jumlah, harga) FROM stdin;
    public          postgres    false    220   ?4                 0    16515    orders 
   TABLE DATA           X   COPY public.orders (id, nama, alamat, kode_pos, no_hp, id_category, status) FROM stdin;
    public          postgres    false    218   ?4                 0    16431    pinjaman 
   TABLE DATA           U   COPY public.pinjaman (id, nama, norek, alamat, jmlh_pinjaman, no_telpon) FROM stdin;
    public          postgres    false    210   ?5                 0    16445    todo 
   TABLE DATA           L   COPY public.todo (id, title, description, user_id, category_id) FROM stdin;
    public          postgres    false    212   ?5                 0    16487    users 
   TABLE DATA           :   COPY public.users (id, name, email, password) FROM stdin;
    public          postgres    false    214   ?6       .           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 3, true);
          public          postgres    false    215            /           0    0    item_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.item_id_seq', 5, true);
          public          postgres    false    219            0           0    0    order_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.order_id_seq', 15, true);
          public          postgres    false    217            1           0    0    pinjaman_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pinjaman_id_seq', 2, true);
          public          postgres    false    209            2           0    0    todo_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.todo_id_seq', 8, true);
          public          postgres    false    211            3           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    213            ?           2606    16503    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    216            ?           2606    16529    item item_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
       public            postgres    false    220            ?           2606    16522    orders order_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.orders DROP CONSTRAINT order_pkey;
       public            postgres    false    218            |           2606    16436    pinjaman pinjaman_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pinjaman
    ADD CONSTRAINT pinjaman_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pinjaman DROP CONSTRAINT pinjaman_pkey;
       public            postgres    false    210            ~           2606    16452    todo todo_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.todo DROP CONSTRAINT todo_pkey;
       public            postgres    false    212            ?           2606    16494    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    214            ?           2606    16530    orders category_id    FK CONSTRAINT     z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT category_id FOREIGN KEY (id_category) REFERENCES public.categories(id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT category_id;
       public          postgres    false    218    3202    216            ?           2606    16536    orders fk_id_category    FK CONSTRAINT     }   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_id_category FOREIGN KEY (id_category) REFERENCES public.categories(id);
 ?   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_id_category;
       public          postgres    false    216    3202    218            ?           2606    16504    todo todo_category_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);
 D   ALTER TABLE ONLY public.todo DROP CONSTRAINT todo_category_id_fkey;
       public          postgres    false    216    3202    212            ?           2606    16509    todo todo_user_id_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.todo DROP CONSTRAINT todo_user_id_fkey;
       public          postgres    false    3200    214    212               -   x?3?tI?̩????2??/???Kq?9?*K2sSA?=... ?<      !   $   x?3?L?-W?8?8?
??p???#F??? ?;         ?   x????
?@?????坙L?#J???&p3??%
??}
m?gs߹ġk???H??9?s$?????ĺT??D]??(U???)?N$\?*yF?#??????hӔ?gӏ???????ro<???\??:Z?????om=ՓEk>f1$q)??`T{???L         .   x?3?L??LK,?T@??F&F??%?%?ŜF??&??F&\1z\\\ g
\         I   x?3?,?,J-/*?4?4?2??(-N??LJ?I?J,??r?&f?qf?????qqqYp?QJ!XE? ?!?         o   x?3?L??LK,??LL???sH?M???K???420JN?43JL6?4072M??M?R??M????8?? $)?9?!v*?d???)8e'?)xd?$V&??\D??1z\\\ O<;*     