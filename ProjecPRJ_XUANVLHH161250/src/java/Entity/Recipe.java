/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Le Vu
 */
public class Recipe {
    private String id;
    private String name;
    private String kindId;
    private String authorId;
    private int like;
    private String picture;
    private String description;
    private int time;

    public Recipe() {
    }

    public Recipe(String id, String name, String kindId, String authorId, int like, String picture, String description, int time) {
        this.id = id;
        this.name = name;
        this.kindId = kindId;
        this.authorId = authorId;
        this.like = like;
        this.picture = picture;
        this.description = description;
        this.time = time;
    }

    public Recipe(String id, String name, String kindId, String authorId, String picture, String description, int time) {
        this.id = id;
        this.name = name;
        this.kindId = kindId;
        this.authorId = authorId;
        this.picture = picture;
        this.description = description;
        this.time = time;
    }
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getKindId() {
        return kindId;
    }

    public void setKindId(String kindId) {
        this.kindId = kindId;
    }

    public String getAuthorId() {
        return authorId;
    }

    public void setAuthorId(String authorId) {
        this.authorId = authorId;
    }

    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Recipe{" + "id=" + id + ", name=" + name + ", kindId=" + kindId + ", authorId=" + authorId + ", like=" + like + ", picture=" + picture + ", description=" + description + ", time=" + time + '}';
    }



    
}