package tacos;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import lombok.Data;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Data
public class Taco {

    @NotNull
    @Size(min = 5, message="Name must be at least 5 characters long")
    private String name;

    @NotNull
    @Size(min=1, message="You must choose at least 1 ingredient")
    private List<Ingredient> ingredients = new ArrayList<>();

    private Long id;

    private Date createdAt = new Date();

}
