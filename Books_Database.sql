--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9
-- Dumped by pg_dump version 15.4

-- Started on 2023-11-01 09:38:00 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 17072)
-- Name: author; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.author (
    name character varying(25) NOT NULL,
    social character varying(25) NOT NULL,
    about text
);


ALTER TABLE public.author OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17067)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    isbn character varying(15) NOT NULL,
    title character varying(50),
    subtitle character varying(75),
    category character varying(15),
    author character varying(25),
    publisher character varying(25),
    price money,
    release date,
    about text
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17096)
-- Name: book_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_details (
    book_isbn character varying(15) NOT NULL,
    language character varying(15),
    cover character varying(10),
    pages integer,
    dimensions character varying(25)
);


ALTER TABLE public.book_details OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17079)
-- Name: books_authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_authors (
    book_isbn character varying(15) NOT NULL,
    author_social character varying(25) NOT NULL
);


ALTER TABLE public.books_authors OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 17091)
-- Name: books_publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_publishers (
    book_isbn character varying(15) NOT NULL,
    publisher_social character varying(25) NOT NULL
);


ALTER TABLE public.books_publishers OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 17084)
-- Name: publisher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publisher (
    name character varying(25),
    street_number integer,
    street_name character varying(25),
    city character varying(25),
    state character varying(5),
    country character varying(25),
    social character varying(25) NOT NULL,
    about text
);


ALTER TABLE public.publisher OWNER TO postgres;

--
-- TOC entry 3453 (class 2606 OID 17078)
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (social);


--
-- TOC entry 3461 (class 2606 OID 17100)
-- Name: book_details book_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_details
    ADD CONSTRAINT book_details_pkey PRIMARY KEY (book_isbn);


--
-- TOC entry 3451 (class 2606 OID 17071)
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (isbn);


--
-- TOC entry 3455 (class 2606 OID 17083)
-- Name: books_authors books_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_authors
    ADD CONSTRAINT books_authors_pkey PRIMARY KEY (book_isbn, author_social);


--
-- TOC entry 3459 (class 2606 OID 17095)
-- Name: books_publishers books_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_publishers
    ADD CONSTRAINT books_publishers_pkey PRIMARY KEY (book_isbn, publisher_social);


--
-- TOC entry 3457 (class 2606 OID 17090)
-- Name: publisher publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (social);


--
-- TOC entry 3466 (class 2606 OID 17121)
-- Name: book_details book_details_book_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_details
    ADD CONSTRAINT book_details_book_isbn_fkey FOREIGN KEY (book_isbn) REFERENCES public.book(isbn) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3462 (class 2606 OID 17106)
-- Name: books_authors books_authors_author_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_authors
    ADD CONSTRAINT books_authors_author_email_fkey FOREIGN KEY (author_social) REFERENCES public.author(social) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3463 (class 2606 OID 17101)
-- Name: books_authors books_authors_book_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_authors
    ADD CONSTRAINT books_authors_book_isbn_fkey FOREIGN KEY (book_isbn) REFERENCES public.book(isbn) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3464 (class 2606 OID 17111)
-- Name: books_publishers books_publishers_book_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_publishers
    ADD CONSTRAINT books_publishers_book_isbn_fkey FOREIGN KEY (book_isbn) REFERENCES public.book(isbn) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3465 (class 2606 OID 17116)
-- Name: books_publishers books_publishers_publisher_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_publishers
    ADD CONSTRAINT books_publishers_publisher_email_fkey FOREIGN KEY (publisher_social) REFERENCES public.publisher(social) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2023-11-01 09:38:00 CET

--
-- PostgreSQL database dump complete
--

